class VenueController <ApplicationController

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

end
