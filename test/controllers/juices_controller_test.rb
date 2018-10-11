require 'test_helper'

class JuicesControllerTest < ActionDispatch::IntegrationTest
  test 'juicesのトップページを開くことが出来る' do
    get juice_url
    assert_response :success
  end
end
