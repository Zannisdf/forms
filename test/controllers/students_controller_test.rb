require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get students_new_url
    assert_response :success
  end

  test "should get show" do
    get students_show_url
    assert_response :success
  end

end