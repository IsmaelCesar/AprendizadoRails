class AddValueColumnToCoin < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :value, :decimal
  end
end
