require 'test_helper'

class TagManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tag_managements_new_url
    assert_response :success
  end

  test "should get create" do
    get tag_managements_create_url
    assert_response :success
  end

end
