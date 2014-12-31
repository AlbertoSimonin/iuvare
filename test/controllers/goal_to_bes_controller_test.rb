require 'test_helper'

class GoalToBesControllerTest < ActionController::TestCase
  setup do
    @goal_to_be = goal_to_bes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goal_to_bes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal_to_be" do
    assert_difference('GoalToBe.count') do
      post :create, goal_to_be: { date: @goal_to_be.date, dream: @goal_to_be.dream, goal: @goal_to_be.goal, users_id: @goal_to_be.users_id }
    end

    assert_redirected_to goal_to_be_path(assigns(:goal_to_be))
  end

  test "should show goal_to_be" do
    get :show, id: @goal_to_be
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goal_to_be
    assert_response :success
  end

  test "should update goal_to_be" do
    patch :update, id: @goal_to_be, goal_to_be: { date: @goal_to_be.date, dream: @goal_to_be.dream, goal: @goal_to_be.goal, users_id: @goal_to_be.users_id }
    assert_redirected_to goal_to_be_path(assigns(:goal_to_be))
  end

  test "should destroy goal_to_be" do
    assert_difference('GoalToBe.count', -1) do
      delete :destroy, id: @goal_to_be
    end

    assert_redirected_to goal_to_bes_path
  end
end
