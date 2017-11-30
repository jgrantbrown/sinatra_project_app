

class UserController <ApplicationController

  get '/users' do
    @users = User.all
    erb :'/users/user_index'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    @bands=@user.concerts.joins(:band).group("band").count

    erb :'/users/user_show'
  end

  post '/users/addconcert' do
    
  end

end
