class AddUserReferenceToWallet < ActiveRecord::Migration[5.2]
  def change
    add_reference :wallets, :users, foreign_key: true
  end
end
