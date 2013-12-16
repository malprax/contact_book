require 'test_helper'

class PhilosophiesControllerTest < ActionController::TestCase
  setup do
    @philosophy = philosophies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:philosophies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create philosophy" do
    assert_difference('Philosophy.count') do
      post :create, philosophy: { input_text: @philosophy.input_text }
    end

    assert_redirected_to philosophy_path(assigns(:philosophy))
  end

  test "should show philosophy" do
    get :show, id: @philosophy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @philosophy
    assert_response :success
  end

  test "should update philosophy" do
    patch :update, id: @philosophy, philosophy: { input_text: @philosophy.input_text }
    assert_redirected_to philosophy_path(assigns(:philosophy))
  end

  test "should destroy philosophy" do
    assert_difference('Philosophy.count', -1) do
      delete :destroy, id: @philosophy
    end

    assert_redirected_to philosophies_path
  end
end
