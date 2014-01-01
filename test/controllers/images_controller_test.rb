require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post :create, image: { picture_content_type: @image.picture_content_type, picture_file_name: @image.picture_file_name, picture_file_size: @image.picture_file_size, picture_updated_at: @image.picture_updated_at, title: @image.title }
    end

    assert_redirected_to image_path(assigns(:image))
  end

  test "should show image" do
    get :show, id: @image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image
    assert_response :success
  end

  test "should update image" do
    patch :update, id: @image, image: { picture_content_type: @image.picture_content_type, picture_file_name: @image.picture_file_name, picture_file_size: @image.picture_file_size, picture_updated_at: @image.picture_updated_at, title: @image.title }
    assert_redirected_to image_path(assigns(:image))
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete :destroy, id: @image
    end

    assert_redirected_to images_path
  end
end
