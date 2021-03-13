class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.references :DiscountType, null: false, foreign_key: true
      t.float :amount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
