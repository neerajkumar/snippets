require 'test_helper'

class SnippetsControllerTest < ActionController::TestCase
  setup do
    @snippet = snippets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snippets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snippet" do
    assert_difference('Snippet.count') do
      post :create, snippet: { content: @snippet.content, private: @snippet.private }
    end

    assert_redirected_to snippet_path(assigns(:snippet))
  end

  test "should show snippet" do
    get :show, id: @snippet
    assert_response :success
  end

end
