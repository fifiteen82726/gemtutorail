require 'test_helper'

class GemtutorialsControllerTest < ActionController::TestCase
  setup do
    @gemtutorial = gemtutorials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gemtutorials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gemtutorial" do
    assert_difference('Gemtutorial.count') do
      post :create, gemtutorial: { description: @gemtutorial.description, genre: @gemtutorial.genre, name: @gemtutorial.name, repo: @gemtutorial.repo, score: @gemtutorial.score }
    end

    assert_redirected_to gemtutorial_path(assigns(:gemtutorial))
  end

  test "should show gemtutorial" do
    get :show, id: @gemtutorial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gemtutorial
    assert_response :success
  end

  test "should update gemtutorial" do
    patch :update, id: @gemtutorial, gemtutorial: { description: @gemtutorial.description, genre: @gemtutorial.genre, name: @gemtutorial.name, repo: @gemtutorial.repo, score: @gemtutorial.score }
    assert_redirected_to gemtutorial_path(assigns(:gemtutorial))
  end

  test "should destroy gemtutorial" do
    assert_difference('Gemtutorial.count', -1) do
      delete :destroy, id: @gemtutorial
    end

    assert_redirected_to gemtutorials_path
  end
end
