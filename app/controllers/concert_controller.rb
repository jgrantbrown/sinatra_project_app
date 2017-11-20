class ConcertController <ApplicationController

get '/concerts' do
  erb :'/concerts/concert_index'
end

get '/concert/new' do

  erb :'/concerts/create_concert'
end

post '/concert' do
  binding.pry
  # @concert = Concert.new
  # @concert.name =  params[:concert_name]

end

end
