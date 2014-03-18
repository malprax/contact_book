require 'test_helper'

class NewstudentsControllerTest < ActionController::TestCase
  setup do
    @newstudent = newstudents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newstudents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newstudent" do
    assert_difference('Newstudent.count') do
      post :create, newstudent: { birth: @newstudent.birth, contact_person: @newstudent.contact_person, gender: @newstudent.gender, name: @newstudent.name, religion: @newstudent.religion, street: @newstudent.street }
    end

    assert_redirected_to newstudent_path(assigns(:newstudent))
  end

  test "should show newstudent" do
    get :show, id: @newstudent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newstudent
    assert_response :success
  end

  test "should update newstudent" do
    patch :update, id: @newstudent, newstudent: { birth: @newstudent.birth, contact_person: @newstudent.contact_person, gender: @newstudent.gender, name: @newstudent.name, religion: @newstudent.religion, street: @newstudent.street }
    assert_redirected_to newstudent_path(assigns(:newstudent))
  end

  test "should destroy newstudent" do
    assert_difference('Newstudent.count', -1) do
      delete :destroy, id: @newstudent
    end

    assert_redirected_to newstudents_path
  end
end
