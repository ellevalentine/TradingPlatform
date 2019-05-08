class StocksController < ApplicationController

  def index
    @current_stocks = helpers.get_current_stocks
    @stocks = Stock.all

  end

  def show
    @stock = Stock.find(params[:id])
  end

  def new
    @stock = Stock.new
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

    # def stock_params
    #   params.require(:stocks).permit(:company_name, :price, :symbol, :search)
    # end


end
