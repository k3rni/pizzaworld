require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:first)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      attrs = @restaurant.attributes
      attrs[:pizza_ids] = [pizzas(:lazio).id, pizzas(:piccante).id]
      attrs['name'] += '1' # aby przeszlo uniq
      post :create, restaurant: attrs
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should not create duplicate restaurant" do
    assert_no_difference('Restaurant.count') do
      post :create, restaurant: @restaurant.attributes
    end
    assert_response :success
  end

  test "should not create restaurant with empty menu" do
    assert_no_difference('Restaurant.count') do
      post :create, restaurant: @restaurant.attributes
    end
    assert_response :success
  end

  test "should show restaurant" do
    get :show, id: @restaurant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant.to_param
    assert_response :success
  end

  test "should update restaurant" do
    attrs = @restaurant.attributes
    attrs.merge! :pizza_ids => [pizzas(:lazio).id, pizzas(:piccante).id]
    put :update, id: @restaurant.to_param, restaurant: attrs
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should not update restaurant with empty menu" do
    put :update, id: @restaurant.to_param, restaurant: @restaurant.attributes
    assert_response :success
  end


  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant.to_param
    end

    assert_redirected_to restaurants_path
  end
end
