class CreateWalletCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :wallet_coins do |t|
      t.references :wallet, foreign_key: true
      t.references :coin, foreign_key: true

      t.timestamps
    end
  end
end
