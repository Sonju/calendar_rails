class SessionsController < ApplicationController
  # get
  def login
    # user logins

  end

# post
  def confirmation
    puts '-----sessions#controller-------'

    puts '-----end sessios#controller-------'

    # shows user login status
    @user = User.find_by_email(params[:email])
  end

# get
  def logout
    # user logout
    session[:user_id] = nil
    redirect_to 'users/login'
  end
end
