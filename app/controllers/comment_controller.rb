class CommentController < ApplicationController

  post '/comments' do
    c= Comment.new
    c.concert_id=params[:concert_id]
    c.user_id= session[:user_id]
    c.comment= params[:comment]
    c.save

    redirect "concerts/#{params[:concert_id]}"
  end



  delete '/comments/:id' do
    Comment.find(params[:id]).destroy
    redirect "concerts/#{params[:concert_id]}"
  end

get '/comments/:id/update' do
  @comment=Comment.find(params[:id])
  @concert= Concert.find(@comment.concert.id)

  erb :'comments/update_comment'
end

put '/comments/:id' do
  @comment=Comment.find(params[:id])
  @comment.update(comment: params[:comment])
  redirect "concerts/#{params[:concert_id]}"
end

end
