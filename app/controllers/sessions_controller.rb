class SessionsController < ApplicationController
  # get
  def login
    # user logins

  end

# post
  def confirmation
    puts '-----sessions#controller-------'

    puts '-----end sessions#controller-------'

    # shows user login status
    @user = User.find_by_email(params[:email])
  end
    # if @user && @user.authenticatie(params[:password])
    #   session[:user_id] = @user.id
    #   redirect_to '/'

    # else
    #   @message = 'User account or password do not match'
    #   render '/sessions/login'
  #   end
  #
  # end

# get
  def logout
    # user logout
    session[:user_id] = nil
    redirect_to '/users/login'
  end
end
