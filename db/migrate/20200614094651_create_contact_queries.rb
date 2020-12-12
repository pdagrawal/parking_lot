class CreateContactQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_queries do |t|
      t.string :name
      t.string :email, null: false
      t.text :message
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
