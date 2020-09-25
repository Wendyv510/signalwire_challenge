class TagsController < ApplicationController

    def index 
        tag = Tag.all 
        render json: TagSerializer.new(tags)
    end 

    def new 
        tag = Tag.new 
    end 

    def create 
        tag = Tag.new(tag_params) 
        
    end 


       private 

    def tag_params 
        params.require(:user).permit(:tags) 
    end 
end
end
