class SigninController <ApplicationController

get "/signup" do
  erb :'/signup/new'
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
 erb :'login/login'
end

post "/login" do
 @user = User.find_by(username: params[:username])
 if @user && @user.authenticate(params[:password])
   session[:user_id] = @user.id
   redirect to "/users/#{@user.id}"
 else
   redirect to "/failure"
 end
end

get "/logout" do
  session.clear
  redirect "/"
end

end
