class UsersController < ApplicationController
  layout "sforms"
  def new
    
  	@user = User.new
  end

  def create

    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "User created"
      redirect_to root_url
    else
      render 'new'
    end
  end
end
