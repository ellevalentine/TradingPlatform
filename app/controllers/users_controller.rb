class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      dob: params[:dob],
      bank_account: params[:bank_account],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      tb = Tradingbook.create(user: @user)
      redirect_to users_path, :notice => "User Created"
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
