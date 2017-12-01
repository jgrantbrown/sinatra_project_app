require './config/environment'
# require "./app/models/user"

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  # Helpers
    def current_user
        User.find(session[:user_id]) if session[:user_id]
    end

    def is_logged_in?
      !!current_user
    end



  get '/' do
    erb :index
  end



end
