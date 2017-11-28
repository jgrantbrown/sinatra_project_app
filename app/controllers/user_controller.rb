class UserController <ApplicationController

  get '/users' do
    @users = User.all
    erb :'/users/user_index'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    # How to I only call Concerts this user has been too?
    @bands=@user.concerts.joins(:band).group("band").count

    erb :'/users/user_show'
  end



end


Concert.joins(:band).group("band").count
