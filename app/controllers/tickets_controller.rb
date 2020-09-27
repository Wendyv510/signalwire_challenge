class TicketsController < ApplicationController

    def index 
        tickets = Ticket.all
        render json: TicketSerializer.new(tickets) 
    end 

    def new 
        ticket = Ticket.new 
    end 

    def create 
        ticket = Ticket.new(ticket_params) 
        if ticket.save 
            render json: TicketSerializer.new(ticket)
        else 
            render json: {errors: user.errors.full_messages}, status: 422
        end 
    end 


       private 

    def ticket_params 
        params.require(:user).permit(:user_id, :title) 
    end 
end
