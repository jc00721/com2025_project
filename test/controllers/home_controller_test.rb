require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end
  test 'should get contact' do
    get :contact
    assert_response :success
  end
  test "should post request contact but no email" do
    post :request_contact
    
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end  
  
  test "should post request contact" do
    post :request_contact,
      name: "James" , email: "jc00721@surrey.ac.uk",
      subject: "test subject", message: "test"
    
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
end
