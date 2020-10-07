class CoinWallet < ApplicationRecord
  belongs_to :wallet, dependent: :delete
  belongs_to :coin, dependent: :delete
end
