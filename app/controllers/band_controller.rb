class BandController < ApplicationController

  get '/bands' do
    @bands=Band.all
    erb :'/band/index'
  end

  get '/bands/:id' do
    @band= Band.find(params[:id])
    erb :'/band/band_show'
  end


end
