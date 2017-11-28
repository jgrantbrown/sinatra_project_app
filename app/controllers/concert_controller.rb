class ConcertController <ApplicationController

get '/concerts' do
    @concerts=Concert.all
  erb :'/concerts/concert_index'
end

get '/concert/new' do
  erb :'/concerts/create_concert'
end

post '/concert' do
  binding.pry
#  @user = User.find(session["user_id"])
  # @concert = Concert.new
  # @concert.name =  params[:concert_name]

end

delete '/concert/:id' do

  @concert = Concert.find(params["id"])
  @concert.destroy
  redirect 'users/user_show'
end

end
