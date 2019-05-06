class LongAndMovesController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render_ajax_error model: @user
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
