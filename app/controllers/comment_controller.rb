class CommentController < ApplicationController

  post '/comments' do
    c= Comment.new
    c.concert_id=params[:concert_id]
    c.user_id= session[:user_id]
    c.comment= params[:comment]
    c.save

    redirect "concerts/#{params[:concert_id]}"
  end

  

end
