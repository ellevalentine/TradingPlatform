class TradingbooksController < ApplicationController
  def index
    @tradingbooks = Tradingbook.all
  end

  def show
    @tradingbooks = Tradingbook.all
    @tradingbook = Tradingbook.find(params["id"])
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
