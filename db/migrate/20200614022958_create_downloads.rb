class CreateDownloads < ActiveRecord::Migration[6.0]
  def change
    create_table :downloads do |t|
      t.string :url
      t.string :filename
      t.inet :remote_ip
      t.boolean :erased, default: false

      t.timestamps
    end
  end
end
