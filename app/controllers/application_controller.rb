require './config/environment'
# require "./app/models/user"
require 'sinatra/base'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    use Rack::Flash
    set :session_secret, "secret"
    set :show_exceptions, :after_handler
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

  not_found do

  erb :"/notfound"
  end

  error do
    'Sorry there was a nasty error - ' + env['sinatra.error'].message
  end



end
