class TicketsController < ApplicationController

    def index 
        @tickets = Ticket.all 
    end 

    def new 
        @ticket = Ticket.new 
    end 

    def create 
        @ticket = Ticket.new(ticket_params) 
        
    end 


       private 

    def ticket_params 
        params.require(:user).permit(:user_id, :title) 
    end 
end
end
