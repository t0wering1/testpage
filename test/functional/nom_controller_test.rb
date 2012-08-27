require 'test_helper'

class NomControllerTest < ActionController::TestCase
  test "should get testpage" do
    get :testpage
    assert_response :success
  end

end
