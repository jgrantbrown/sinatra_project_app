class ConcertController <ApplicationController

  get '/concerts' do
      @concerts=Concert.all

    erb :'/concerts/concert_index'
  end

  get '/concerts/new' do
    erb :'/concerts/create_concert'
  end

  get '/concerts/:id' do
    @concert = Concert.find(params["id"])
    erb :'/concerts/concert_show'
  end

  post '/concerts' do
  # need to write logic to either use radio checked or create and then process
   @user = User.find(session["user_id"])
     @concert = Concert.new
      @concert.name =  params[:concert_name]
      @concert.band_name=(params['concert']['band_name'])
      @concert.venue_name=(params['concert']['venue_name'])
      @concert.date=(params['concert']['date'])
      @user.concerts<<@concert


      redirect "/users/#{session["user_id"]}"
  end

  delete '/concerts/:id' do

    @concert = Concert.find(params["id"])
    @concert.destroy
    redirect "users/#{params[:id]}"
  end

# Addd Strong Params?

end
