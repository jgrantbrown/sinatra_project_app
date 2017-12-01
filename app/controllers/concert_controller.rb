class ConcertController <ApplicationController

  get '/concerts' do
      @concerts=Concert.all
      # .sort_by &:date

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
    # binding.pry
  # need to write logic to either use radio checked or create and then process
     @user = User.find(session["user_id"])

     if params['concert']['date'] == ""
        # advise no date entered
         redirect 'concerts/new'
      elsif Concert.concert_exists(params)
              @concert=Concert.find_concert(params)
              @user.concerts<<@concert
            redirect "/users/#{session["user_id"]}"
      else
              @concert = Concert.new
              @concert.date = params['concert']['date']
              @concert.band_id=params['concert']['band_id']
              @concert.venue_id=params['concert']['venue_id']
              @concert.save
              @user.concerts<<@concert
          redirect "/users/#{session["user_id"]}"
      end

        
  end

  delete '/concerts/:id' do

    @concert = Concert.find(params["id"])
    @concert.destroy
    redirect "users/#{session[:user_id]}"
  end

# Addd Strong Params?

end
