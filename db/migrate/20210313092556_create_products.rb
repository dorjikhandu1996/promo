class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :size
      t.text :description
      t.integer :sku
      t.float :delivery_charge
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
# rails g scaffold Product name:string price:float size:string description:text sku:integer delivery_charge:float category:references