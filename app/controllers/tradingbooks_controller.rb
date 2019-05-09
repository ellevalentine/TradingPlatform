class TradingbooksController < ApplicationController
  def index
    @tradingbooks = Tradingbook.all
  end

  def show
    # byebug
    @tradingbook = Tradingbook.find(params["id"])
    @tradingbooks = Tradingbook.where(user_id: @tradingbook.user.id)
    # @tradingbook = Tradingbook.find(params["id"])
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
end
