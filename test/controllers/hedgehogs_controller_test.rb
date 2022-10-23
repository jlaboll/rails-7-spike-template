require "test_helper"

class HedgehogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hedgehog = hedgehogs(:one)
  end

  test "should get index" do
    get hedgehogs_url, as: :json
    assert_response :success
  end

  test "should create hedgehog" do
    assert_difference("Hedgehog.count") do
      post hedgehogs_url, params: { hedgehog: { birthday: @hedgehog.birthday, breed: @hedgehog.breed, color: @hedgehog.color, name: @hedgehog.name } }, as: :json
    end

    assert_response :created
  end

  test "should show hedgehog" do
    get hedgehog_url(@hedgehog), as: :json
    assert_response :success
  end

  test "should update hedgehog" do
    patch hedgehog_url(@hedgehog), params: { hedgehog: { birthday: @hedgehog.birthday, breed: @hedgehog.breed, color: @hedgehog.color, name: @hedgehog.name } }, as: :json
    assert_response :success
  end

  test "should destroy hedgehog" do
    assert_difference("Hedgehog.count", -1) do
      delete hedgehog_url(@hedgehog), as: :json
    end

    assert_response :no_content
  end
end
