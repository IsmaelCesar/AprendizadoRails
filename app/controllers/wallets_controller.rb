class WalletsController < ApplicationController
  before_action :set_current_user, only: [:create, :show, :get_wallets_table]

  def new
    @new_wallet = Wallet.new
    respond_to do |format|
      format.html { render 'wallets/new', layout: false, locals: { wallet: @new_wallet } and return }
    end
  end

  def create
    @new_wallet = Wallet.new(new_wallet_params)
    @new_wallet.user = @current_user
    Wallet.transaction do
      @new_wallet.save
    end
  end

  def show
  end

  def destroy
    @wallet = Wallet.find(params[:id])
    Wallet.transaction do
      @wallet.destroy
    end
  end

  def get_wallets_table
    @wallets = @current_user.wallets
    respond_to do |format|
      format.html { render partial: 'wallets/wallets_table', layout: false }
    end
  end

  private

  def new_wallet_params
    params.permit(:id)
  end

  def set_current_user
    @current_user = current_user
  end

end
