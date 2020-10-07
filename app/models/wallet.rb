class Wallet < ApplicationRecord
  belongs_to :user
  has_many :coin_wallet, dependent: :delete_all
end
