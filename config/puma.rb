# Before configuring Puma, you should look up the number of CPU cores your server has, change this to match your CPU core count
workers Integer(ENV['WEB_CONCURRENCY'] || [1, `grep -c processor /proc/cpuinfo`.to_i].max)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup DefaultRackup

# HTTP interface
port 3000

# HTTPS inteface
# How to generate certificate: https://gist.github.com/tadast/9932075
#ssl_bind '0.0.0.0', '3001', { key: 'ssl/server.key', cert: 'ssl/server.crt' }

environment ENV['RAILS_ENV'] || 'production'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection
end
