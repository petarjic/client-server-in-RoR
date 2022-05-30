require File.expand_path('test/test_helper')
 
class OrganizationTest < ActiveSupport::TestCase
  
  test "add organization" do
    org = Organization.new 
    assert !org.save
  end
  
  test “should create registration” do
  assert_difference(‘Registration.count’) do
    post :create, :organization => { }
  end
  assert_redirected_to organization_path(assigns(:organization))
end
end
