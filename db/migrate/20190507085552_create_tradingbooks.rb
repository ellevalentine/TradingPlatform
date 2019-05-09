class CreateTradingbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :tradingbooks do |t|

      t.string :user_id
      t.string :stock_id
      t.integer :profit_loss
      t.string :company_name
      t.integer :quantity
      t.integer :price
      t.integer :cost

      t.timestamps
    end
  end
end
