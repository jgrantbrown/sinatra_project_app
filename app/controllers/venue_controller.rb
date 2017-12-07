class VenueController <ApplicationController

  get '/venues' do
      @venues = Venue.all

      erb :'/venue/venue_index'
  end

  post '/venues/new' do
      if Venue.find_by( name: params[:concert][:venue_name])
        # advice venue is already in system
        redirect '/concerts/new'
      else
        @venue=Venue.new
        @venue.name=params[:concert][:venue_name]
        @venue.save
        # advise venue as been added to list
        redirect '/concerts/new'
    end
  end

  get '/venues/:id' do
    @venue= Venue.find(params[:id])
    erb :'venue/venue_show'
  end



end
