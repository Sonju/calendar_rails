Rails.application.routes.draw do
  # http://docs.railsbridge.org/intro-to-rails/setting_the_default_page
  # root - or landing page
  root 'meetings#index'

  # Meetings
  # http verb - 'resource/route' => mapped to a controller#method
  get 'meetings' => 'meetings#index'
  get 'meetings/new' => 'meetings#new'
  post 'meetings/create' => 'meetings#create'
  post 'meetings/udpate' => 'meetings#udpate'
  patch 'meetings/delete' => 'meetings#delete'
  get 'meetings/confirmation' => 'meetings#confirmation'


  # Seesions - login/logout
  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout' => 'sessions#logout'


  # Registraion
  # http verb - 'resource/route' => mapped to a controller#method
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'

end
