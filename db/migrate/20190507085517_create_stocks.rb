class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|

      t.string :company_name
      t.string :symbol
      t.integer :price

      t.timestamps
    end
  end
end
