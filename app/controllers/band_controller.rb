class BandController < ApplicationController

  get '/bands' do
    @bands=Band.all.sort_by &:name
    erb :'/band/index'
  end

  get '/bands/:id' do
    @band= Band.find(params[:id])

    erb :'/band/band_show'
  end

  post '/bands/new' do
      if Band.find_by( name: params[:concert][:band_name])
        # advice venue is already in system
        redirect '/concerts/new'
      else
        @band=Band.new
        @band.name=params[:concert][:band_name]
        @band.save
        # advise venue as been added to list
        redirect '/concerts/new'
    end
  end

end
