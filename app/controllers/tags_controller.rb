class TagsController < ApplicationController

    def index 
        tags = Tag.all 
        render json: TagSerializer.new(tags)
    end 

    def new 
        tag = Tag.new 
    end 

    def create 
        tag = Tag.new(tag_params) 
        if tag.save 
            render json: TagSerializer.new(tag)
        else 
            render json: {errors: user.errors.full_messages}, status: 422
        end 
    end 


       private 

    def tag_params 
        params.require(:user).permit(:tags[]) 
    end 
end
