#!/bin/bash
set -e

rake db:migrate
rake assets:precompile

exec "$@"
