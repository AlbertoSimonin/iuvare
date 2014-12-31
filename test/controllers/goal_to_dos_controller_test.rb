require 'test_helper'

class GoalToDosControllerTest < ActionController::TestCase
  setup do
    @goal_to_do = goal_to_dos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goal_to_dos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal_to_do" do
    assert_difference('GoalToDo.count') do
      post :create, goal_to_do: { date: @goal_to_do.date, dream: @goal_to_do.dream, goal: @goal_to_do.goal, users_id: @goal_to_do.users_id }
    end

    assert_redirected_to goal_to_do_path(assigns(:goal_to_do))
  end

  test "should show goal_to_do" do
    get :show, id: @goal_to_do
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goal_to_do
    assert_response :success
  end

  test "should update goal_to_do" do
    patch :update, id: @goal_to_do, goal_to_do: { date: @goal_to_do.date, dream: @goal_to_do.dream, goal: @goal_to_do.goal, users_id: @goal_to_do.users_id }
    assert_redirected_to goal_to_do_path(assigns(:goal_to_do))
  end

  test "should destroy goal_to_do" do
    assert_difference('GoalToDo.count', -1) do
      delete :destroy, id: @goal_to_do
    end

    assert_redirected_to goal_to_dos_path
  end
end
