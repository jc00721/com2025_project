require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  setup do
    @song = songs(:one)
    @album = albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  test "should get new" do
    get :new, album_id: @album
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post :create, song: { album_id: @album, genre: @song.genre, length: @song.length, single: @song.single, title: @song.title }
    end

    assert_redirected_to song_path(assigns(:song))
  end

  test "should show song" do
    get :show, id: @song
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song
    assert_response :success
  end

  test "should update song" do
    patch :update, id: @song, song: { album_id: @album, genre: @song.genre, length: @song.length, single: @song.single, title: @song.title }
    assert_redirected_to song_path(assigns(:song))
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete :destroy, id: @song
    end

    assert_redirected_to songs_path
  end
    test "should fail to save an empty song" do
    song = Song.new
    
    song.save
    refute song.valid?
  end
  
  test "should save a valid song" do
    song = Song.new
    
    song.album = @album
    song.title = "test"
    song.genre = "test"
    song.length = 3.42
    song.single = false

    song.save
    assert song.valid?
  end
end
