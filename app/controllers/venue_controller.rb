class VenueController <ApplicationController

  get '/venues' do
      @venues = Venue.all

      erb :'/venue/venue_index'
  end

  post '/venues/new' do
    
      if Venue.find_by(name: params[:concert][:venue_name]) == nil && params[:concert][:venue_name] != ""
        @venue=Venue.new
        @venue.name=params[:concert][:venue_name]
        @venue.save
        # advise venue as been added to list
        erb :'/concerts/create_concert'
      else
        # advice venue is already in system
        flash[:message]= "This is already an option"
        erb :'/concerts/create_concert'
    end
  end

  get '/venues/:id' do
    @venue= Venue.find(params[:id])
    erb :'venue/venue_show'
  end



end
