class MemesController < ApplicationController
   
    def index
        @memes = Meme.all  
    end
    
    def show
        @meme = Meme.find(params[:id])
    end

    def new
        @meme = Meme.new
    end

    def create
        @meme = Meme.create(meme_params)
        redirect_to meme_path(@meme.id)
    end

private

    def meme_params
        params.require(:meme).permit(:image, :caption)
    end


 end
