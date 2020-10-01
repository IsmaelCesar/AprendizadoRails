class CoinWallet < ApplicationRecord
  belongs_to :wallet
  belongs_to :coin
end
