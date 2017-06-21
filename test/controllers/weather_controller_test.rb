require 'test_helper'

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get zip" do
    get weather_zip_url
    assert_response :success
  end

  test "should get view" do
    get weather_view_url
    assert_response :success
  end

end
