class CoinsController < ApplicationController
  before_action :set_user, only: [:show, :new, :create, :update, :destroy]
  after_action :set_user_wallets, only: [:set_user], unless: -> { @user.nil? }

  def show
    @coins = Coin.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @user = current_user
  end

  def set_user_wallets
    @wallets = @user.wallets
  end
end
