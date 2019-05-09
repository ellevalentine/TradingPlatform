class StocksController < ApplicationController

  def index
    @current_stocks = helpers.get_current_stocks
    @stocks = Stock.search_by(params[:q])
  end

  def show
    @stock = Stock.find(params[:id])
    calc_quantity
  end

  def new
    @stock = Stock.new
  end

  def create

  end

  def edit
  end

  def update
    @stock = Stock.find(params[:id])
    @stock.update(quantity: params[:stock][:quantity])
calc_quantity
    @user = User.find_by(id: session[:user_id]) || User.first
    @tradingbook = Tradingbook.create(user: @user,  stock_id: @stock.id, company_name: @stock.company_name, quantity: @quantity, price: @stock.price)

    render :show
    # redirect_to tradingbook_path
  end

  def destroy
  end


private
def calc_quantity
  @quantity = @stock.quantity.nil? ? 0 : @stock.quantity

end

    # def stock_params
    #   params.require(:stocks).permit(:company_name, :price, :symbol, :search)
    # end


end
