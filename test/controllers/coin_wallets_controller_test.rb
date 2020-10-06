require 'test_helper'

class CoinWalletsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get coin_wallets_show_url
    assert_response :success
  end

  test "should get create" do
    get coin_wallets_create_url
    assert_response :success
  end

end
