class UsersController < ApplicationController
    def index 
        users = User.all
        render json: UserSerializer.new(users) 
    end 

    def new 
        user = User.new 
    end 

    def create 
        user = User.new(user_params) 
        if user.save 
         Ticket.create(:user_id [:user][:user_id], :title [:user][:title])
         Tag.create(:tags [:user][:tags]) 
        else 
            render json: {errors: user.errors.full_messages}, status: :unproccessible_entity
        end 
    end 


       private 

    def user_params 
        params.require(:user).permit(:user_id, :title, :tags) 
    end 
end
