class LikesController < ApplicationController

    def index
        @likes = Likes.all
    end
    
    def create
        @like = Like.create(meme_id: params[:meme_id], user_id: session[:user_id])
        redirect_to meme_path(@like.meme_id)
    end



end
