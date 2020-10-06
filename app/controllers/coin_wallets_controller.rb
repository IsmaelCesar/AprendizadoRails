class CoinWalletsController < ApplicationController
  before_action :set_wallet, only: [:show, :create]
  before_action :set_coin, only: [:new, :create]

  def new
  end

  def show
  end

  def create
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  def set_coin
    @coin = Coin.find(params[:coin_id])
  end
end
