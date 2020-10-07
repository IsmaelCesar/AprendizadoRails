class CoinWalletsController < ApplicationController
  before_action :coin_wallet_params, only: [:create]
  before_action :set_wallet, only: [:show]
  before_action :set_coin, only: [:new]

  def new
    @new_coin_wallet = CoinWallet.new
    @wallets = current_user.wallets
    respond_to do |format|
      format.html { render 'coin_wallets/new', layout: false and return }
    end
  end

  def show
  end

  def create
    @wallet = Wallet.find(coin_wallet_params[:wallet_id])
    @coin = Coin.find(coin_wallet_params[:coin_id])
    @new_coin_wallet = CoinWallet.new
    @new_coin_wallet.wallet = @wallet
    @new_coin_wallet.coin = @coin
    CoinWallet.transaction do
      @new_coin_wallet.save
    end
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:wallet_id])
  end

  def set_coin
    @coin = Coin.find(params[:coin_id])
  end

  def coin_wallet_params
    params.require(:coin_wallet).permit!
  end
end
