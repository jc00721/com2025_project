require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  setup do
    @album = albums(:one)
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albums)
  end

  test "should get new" do
    get :new, artist_id: @artist
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post :create, album: { artist_id: @artist, length: @album.length, title: @album.title + "create", tracks: @album.tracks, year: @album.year }
    end

    assert_redirected_to album_path(assigns(:album))
  end

  test "should show album" do
    get :show, id: @album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @album
    assert_response :success
  end

  test "should update album" do
    patch :update, id: @album, album: { artist_id: @artist, length: @album.length, title: @album.title, tracks: @album.tracks, year: @album.year }
    assert_redirected_to album_path(assigns(:album))
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete :destroy, id: @album
    end

    assert_redirected_to albums_path
  end
  
  test "should fail to save an empty album" do
    album = Album.new
    
    album.save
    refute album.valid?
  end
  
  test "should save a valid album" do
    album = Album.new
    
    album.artist = @artist
    album.title = "test"
    album.year = 2016
    album.tracks = 12
    album.length = 1.1

    album.save
    assert album.valid?
  end
    test 'should not allow dublicate album' do
    album1 = Album.new
    
    album1.artist = @artist
    album1.title = "test"
    album1.year = 2016
    album1.tracks = 12
    album1.length = 1.1
    album1.save
    assert album1.valid?
    
    album2 = Album.new
    
    album2.artist = @artist
    album2.title = "test"
    album2.year = 2016
    album2.tracks = 12
    album2.length = 1.1
    album2.save
    refute album2.valid?
  end  
end
