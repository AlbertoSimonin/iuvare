require 'test_helper'

class CollageImagesControllerTest < ActionController::TestCase
  setup do
    @collage_image = collage_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collage_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collage_image" do
    assert_difference('CollageImage.count') do
      post :create, collage_image: { collages_id: @collage_image.collages_id, source: @collage_image.source }
    end

    assert_redirected_to collage_image_path(assigns(:collage_image))
  end

  test "should show collage_image" do
    get :show, id: @collage_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collage_image
    assert_response :success
  end

  test "should update collage_image" do
    patch :update, id: @collage_image, collage_image: { collages_id: @collage_image.collages_id, source: @collage_image.source }
    assert_redirected_to collage_image_path(assigns(:collage_image))
  end

  test "should destroy collage_image" do
    assert_difference('CollageImage.count', -1) do
      delete :destroy, id: @collage_image
    end

    assert_redirected_to collage_images_path
  end
end
