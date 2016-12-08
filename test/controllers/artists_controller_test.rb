require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { dob: @artist.dob, label: @artist.label, name: @artist.name + "create" }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { dob: @artist.dob, label: @artist.label, name: @artist.name }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
  
  test "should fail to save empty artist" do
    artist = Artist.new
    
    artist.save
    refute artist.valid?
  end
  
  test "should save valid artist" do
    artist = Artist.new
    
    artist.name = "testName"
    artist.dob = 20161208
    artist.label = "testLabel"
    
    artist.save
    assert artist.valid?
  end
  
  test 'should not allow dublicate artist' do
    artist1 = Artist.new
    
    artist1.name = "testName"
    artist1.dob = 20161208
    artist1.label = "testLabel"
    
    artist1.save
    assert artist1.valid?
    
    artist2 = Artist.new
    
    artist2.name = "testName"
    artist2.dob = 20161208
    artist2.label = "testLabel"
    
    artist2.save
    refute artist2.valid?
  end  
end
