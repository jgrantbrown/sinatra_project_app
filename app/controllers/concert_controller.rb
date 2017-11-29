class ConcertController <ApplicationController

get '/concerts' do
    @concerts=Concert.all
  erb :'/concerts/concert_index'
end

get '/concerts/new' do
  erb :'/concerts/create_concert'
end

post '/concerts' do

 @user = User.find(session["user_id"])
   @concert = Concert.new
    @concert.name =  params[:concert_name]
    @concert.band_name=(params['concert']['band_name'])
    @concert.venue_name=(params['concert']['venue_name'])
    @concert.date=(params['concert']['date'])
    @user.concerts<<@concert


    # assign concert to user?
    redirect "/users/#{session["user_id"]}"
end

delete '/concerts/:id' do

  @concert = Concert.find(params["id"])
  @concert.destroy
  redirect "users/#{params[:id]}"
end

# Addd Strong Params?

end
