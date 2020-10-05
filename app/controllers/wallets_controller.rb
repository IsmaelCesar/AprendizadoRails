class WalletsController < ApplicationController

  def new
    @new_wallet = Wallet.new
    respond_to do |format|
      format.html { render 'wallets/new', layout: false, locals: { wallet: @new_wallet } and return }
    end
  end

  def create
  end

  def show
  end
end
