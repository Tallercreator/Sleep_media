require "test_helper"

class SonniksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sonnik = sonniks(:one)
  end

  test "should get index" do
    get sonniks_url
    assert_response :success
  end

  test "should get new" do
    get new_sonnik_url
    assert_response :success
  end

  test "should create sonnik" do
    assert_difference("Sonnik.count") do
      post sonniks_url, params: { sonnik: { content: @sonnik.content, title: @sonnik.title } }
    end

    assert_redirected_to sonnik_url(Sonnik.last)
  end

  test "should show sonnik" do
    get sonnik_url(@sonnik)
    assert_response :success
  end

  test "should get edit" do
    get edit_sonnik_url(@sonnik)
    assert_response :success
  end

  test "should update sonnik" do
    patch sonnik_url(@sonnik), params: { sonnik: { content: @sonnik.content, title: @sonnik.title } }
    assert_redirected_to sonnik_url(@sonnik)
  end

  test "should destroy sonnik" do
    assert_difference("Sonnik.count", -1) do
      delete sonnik_url(@sonnik)
    end

    assert_redirected_to sonniks_url
  end
end
