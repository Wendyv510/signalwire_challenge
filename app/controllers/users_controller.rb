class UsersController < ApplicationController
    def index 
        @users = User.all 
    end 

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new(user_params) 
        if @user.save 
           @ticket = Ticket.create(:user_id [:user][:user_id], :title [:user][:title])
           @tag = Tag.create(:tags [:user][:tags])
        end 
    end 


       private 

    def user_params 
        params.require(:user).permit(:user_id, :title, :tags) 
    end 
end
