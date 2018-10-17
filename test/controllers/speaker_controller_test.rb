require 'test_helper'

class SpeakerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get speaker_index_url
    assert_response :success
  end

  test "should get new" do
    get speaker_new_url
    assert_response :success
  end

  test "should get create" do
    get speaker_create_url
    assert_response :success
  end

  test "should get edit" do
    get speaker_edit_url
    assert_response :success
  end

  test "should get update" do
    get speaker_update_url
    assert_response :success
  end

  test "should get destroy" do
    get speaker_destroy_url
    assert_response :success
  end

end
