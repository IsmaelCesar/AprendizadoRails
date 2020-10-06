class WalletsController < ApplicationController
  before_action :set_current_user, only: [:create, :show]

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

  end

  private

  def new_wallet_params
    params.require(:wallet).permit!
  end

  def set_current_user
    @current_user = current_user
  end

end
