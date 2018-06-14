require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get tags_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_url
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post tags_url, params: {
        tag: {
          name: 'Some Tag',
          user_id: @tag.user_id
        }
      }, as: :json
    end

    assert_response 201
  end

  test "should show tag" do
    get tag_url(@tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_url(@tag)
    assert_response :success
  end

  test 'should update tag' do
    patch tag_url(@tag), params: {
      token: @token,
      tag: {
        name: 'Some Tag',
        user_id: @tag.user_id
      }
    }, as: :json
    assert_response 200
  end


  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete tag_url(@tag)
    end

    assert_redirected_to tags_url
  end
end
