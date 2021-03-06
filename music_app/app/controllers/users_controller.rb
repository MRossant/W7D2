class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      #login(@user)
      redirect_to # Where should we redirect to once the user has been created?
    else
      flash.now[:errors].full_messages
      redirect_to # Where should we redirect to once the user has been created?
    end
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
