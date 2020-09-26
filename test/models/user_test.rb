require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user must have title" do
    user = User.new
    assert_not user.save
   end

   test "user tags must be >= 5" do
      user = User.new 
      assert_not user.save 
  end 
end
