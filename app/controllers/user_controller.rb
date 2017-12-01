

class UserController <ApplicationController

  get '/users' do
    @users = User.all
    erb :'/users/user_index'
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    @bands=@user.concerts.joins(:band).group("band").count
    @venues=@user.concerts.joins(:venue).group("venue").count
    erb :'/users/user_show'
  end

  post '/users/addconcert' do
    @user = User.find(session[:user_id])
    @user.concerts<<Concert.find(params[:concert_id])

    redirect "/users/#{@user.id}"
  end

  post '/concertuser/delete' do
    ConcertUser.find_by(user_id: session[:user_id], concert_id: params[:concert_id]).destroy

     redirect "/users/#{session[:user_id]}"
  end

end
