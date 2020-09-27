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
         render json: UserSerializer.new(users)
         render json: TicketSerializer.new(ticket)
         render json: TagSerializer.new(tag)
        else 
            render json: {errors: user.errors.full_messages}, status: 422
        end 
    end 


       private 

    def user_params 
        params.require(:user).permit(:user_id, :title, :tags) 
    end 
end
