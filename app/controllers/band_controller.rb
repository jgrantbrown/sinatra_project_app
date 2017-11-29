class BandController < ApplicationController

  get '/bands' do
    @bands=Band.all.sort_by &:name
    erb :'/band/index'
  end

  get '/bands/:id' do
    @band= Band.find(params[:id])
     
    erb :'/band/band_show'
  end


end
