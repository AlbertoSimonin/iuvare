require 'test_helper'

class PersonalitiesControllerTest < ActionController::TestCase
  setup do
    @personality = personalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personality" do
    assert_difference('Personality.count') do
      post :create, personality: { blue: @personality.blue, green: @personality.green, red: @personality.red, users_id: @personality.users_id, yellow: @personality.yellow }
    end

    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should show personality" do
    get :show, id: @personality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personality
    assert_response :success
  end

  test "should update personality" do
    patch :update, id: @personality, personality: { blue: @personality.blue, green: @personality.green, red: @personality.red, users_id: @personality.users_id, yellow: @personality.yellow }
    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should destroy personality" do
    assert_difference('Personality.count', -1) do
      delete :destroy, id: @personality
    end

    assert_redirected_to personalities_path
  end
end
