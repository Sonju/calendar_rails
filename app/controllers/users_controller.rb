class UsersController < ApplicationController
  # get
  def signup
    # render a view and lets users sigin
  end

# post
  def confirmation
    # puts '-----users#controller-------'
    # puts user_params
    # puts '-----end users#controller-------'
    # post reguest that handles regiration and says thanks

    @user = User.new(user_params)
    if @user.save
      # thanks your in
      session[:user_id] = @user_id

      # Meeting.where(:user_id) => session[:user_id].to_i

    else
      @message = 'User account does exist or password and email do not match.'
      render 'users/signup'
      # woomp woomp
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
