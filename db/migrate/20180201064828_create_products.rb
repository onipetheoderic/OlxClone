class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :subcategory
      t.string :price, null: false
      t.boolean :negotiable, default: false, null: false
      t.text :description, null: false
      t.string :photos
      t.string :phone_number
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
