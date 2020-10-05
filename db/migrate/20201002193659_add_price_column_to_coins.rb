class AddPriceColumnToCoins < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :price, :decimal
  end
end
