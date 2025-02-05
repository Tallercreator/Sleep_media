require "test_helper"

class ProductCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_card = product_cards(:one)
  end

  test "should get index" do
    get product_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_product_card_url
    assert_response :success
  end

  test "should create product_card" do
    assert_difference("ProductCard.count") do
      post product_cards_url, params: { product_card: { description: @product_card.description, title: @product_card.title } }
    end

    assert_redirected_to product_card_url(ProductCard.last)
  end

  test "should show product_card" do
    get product_card_url(@product_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_card_url(@product_card)
    assert_response :success
  end

  test "should update product_card" do
    patch product_card_url(@product_card), params: { product_card: { description: @product_card.description, title: @product_card.title } }
    assert_redirected_to product_card_url(@product_card)
  end

  test "should destroy product_card" do
    assert_difference("ProductCard.count", -1) do
      delete product_card_url(@product_card)
    end

    assert_redirected_to product_cards_url
  end
end
