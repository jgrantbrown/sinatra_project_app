

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
    # how does flash get set from comments/new post?
    @concert = Concert.find(params["id"])
    erb :'/concerts/concert_show'
  end

  post '/concerts' do
     @user = User.find(session["user_id"])

     if params['concert']['date'] == ""

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

# May add ability for admin to delte
  # delete '/concerts/:id' do
  #
  #   @concert = Concert.find(params["id"])
  #   @concert.destroy
  #   redirect "users/#{session[:user_id]}"
  # end

# Addd Strong Params?

end
