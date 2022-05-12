require File.expand_path('test/test_helper')
 
class RegisterTest < ActiveSupport::TestCase
  
  test "add registration" do
    reg = Registration.new(6775091 :studentNumber, Nick :firstName, Burgel :lastName)
    assert !reg.save
  end
end
