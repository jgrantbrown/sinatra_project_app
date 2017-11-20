require './config/environment'
# require "./app/models/user"

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  get "/signup" do
    erb :signup
  end

  post "/signup" do
    if params[:username] == "" || params[:password] == "" || params[:email] == ""
      redirect '/failure'
    else
      User.create(username: params[:username], password: params[:password],email: params[:email])
      redirect '/login'
    end
  end


  get "/login" do
   erb :login
 end

 post "/login" do
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
     session[:user_id] = @user.id
     redirect to "/account"
   else
     redirect to "/failure"
   end
 end

end
