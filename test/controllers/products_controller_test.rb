require_relative '../test_helper'

class ProductsControllerTest < ActionController::TestCase
  fixtures :advertisers, :products

  test "shoould get products index" do
    get :index
    assert_response :success
    products = assigns(:products)
    assert_equal 3, products.length, "3 products should be returned"

    body = JSON.parse(response.body)
    assert body
    assert_equal 3, body["products"].length
  end

end
