require 'test_helper'

class WorkshopScoresControllerTest < ActionController::TestCase
  setup do
    @workshop_score = workshop_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workshop_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workshop_score" do
    assert_difference('WorkshopScore.count') do
      post :create, workshop_score: { score: @workshop_score.score, users_id: @workshop_score.users_id, workshops_id: @workshop_score.workshops_id }
    end

    assert_redirected_to workshop_score_path(assigns(:workshop_score))
  end

  test "should show workshop_score" do
    get :show, id: @workshop_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workshop_score
    assert_response :success
  end

  test "should update workshop_score" do
    patch :update, id: @workshop_score, workshop_score: { score: @workshop_score.score, users_id: @workshop_score.users_id, workshops_id: @workshop_score.workshops_id }
    assert_redirected_to workshop_score_path(assigns(:workshop_score))
  end

  test "should destroy workshop_score" do
    assert_difference('WorkshopScore.count', -1) do
      delete :destroy, id: @workshop_score
    end

    assert_redirected_to workshop_scores_path
  end
end
