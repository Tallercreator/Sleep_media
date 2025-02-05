require "application_system_test_case"

class ProductCardsTest < ApplicationSystemTestCase
  setup do
    @product_card = product_cards(:one)
  end

  test "visiting the index" do
    visit product_cards_url
    assert_selector "h1", text: "Product cards"
  end

  test "should create product card" do
    visit product_cards_url
    click_on "New product card"

    fill_in "Description", with: @product_card.description
    fill_in "Title", with: @product_card.title
    click_on "Create Product card"

    assert_text "Product card was successfully created"
    click_on "Back"
  end

  test "should update Product card" do
    visit product_card_url(@product_card)
    click_on "Edit this product card", match: :first

    fill_in "Description", with: @product_card.description
    fill_in "Title", with: @product_card.title
    click_on "Update Product card"

    assert_text "Product card was successfully updated"
    click_on "Back"
  end

  test "should destroy Product card" do
    visit product_card_url(@product_card)
    click_on "Destroy this product card", match: :first

    assert_text "Product card was successfully destroyed"
  end
end
