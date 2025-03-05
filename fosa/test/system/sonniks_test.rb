require "application_system_test_case"

class SonniksTest < ApplicationSystemTestCase
  setup do
    @sonnik = sonniks(:one)
  end

  test "visiting the index" do
    visit sonniks_url
    assert_selector "h1", text: "Sonniks"
  end

  test "should create sonnik" do
    visit sonniks_url
    click_on "New sonnik"

    fill_in "Content", with: @sonnik.content
    fill_in "Title", with: @sonnik.title
    click_on "Create Sonnik"

    assert_text "Sonnik was successfully created"
    click_on "Back"
  end

  test "should update Sonnik" do
    visit sonnik_url(@sonnik)
    click_on "Edit this sonnik", match: :first

    fill_in "Content", with: @sonnik.content
    fill_in "Title", with: @sonnik.title
    click_on "Update Sonnik"

    assert_text "Sonnik was successfully updated"
    click_on "Back"
  end

  test "should destroy Sonnik" do
    visit sonnik_url(@sonnik)
    click_on "Destroy this sonnik", match: :first

    assert_text "Sonnik was successfully destroyed"
  end
end
