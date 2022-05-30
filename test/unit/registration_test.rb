require File.expand_path('test/test_helper')
 
class RegistrationTest < ActiveSupport::TestCase
  
  test "add registration" do
    reg = Registration.new 
    assert !reg.save
  end
  
  test “should create registration” do
  assert_difference(‘Registration.count’) do
    post :create, :registration => { }
  end
  assert_redirected_to registration_path(assigns(:registration))
end
end
