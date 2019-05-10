class AnalystsController < ApplicationController
  def index
    @analysts = Analyst.all
  end

  def show
    @analyst = Analyst.find(params[:id])
  end

  def new
      @analyst = Analyst.new
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
