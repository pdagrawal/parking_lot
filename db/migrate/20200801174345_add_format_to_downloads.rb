class AddFormatToDownloads < ActiveRecord::Migration[6.0]
  def change
    add_column :downloads, :format, :string
  end
end
