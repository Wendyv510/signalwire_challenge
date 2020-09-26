require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "ticket must have title" do
    ticket = Ticket.new
    assert_not ticket.save
   end
end
