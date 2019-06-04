require 'test_helper'

class GestaltsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gestalt = gestalts(:one)
  end

  test "should get index" do
    get gestalts_url
    assert_response :success
  end

  test "should get new" do
    get new_gestalt_url
    assert_response :success
  end

  test "should create gestalt" do
    assert_difference('Gestalt.count') do
      post gestalts_url, params: { gestalt: { name_of_perpetrator: @gestalt.name_of_perpetrator, suggested_punishment: @gestalt.suggested_punishment, time_of_offence: @gestalt.time_of_offence, type_of_offence: @gestalt.type_of_offence } }
    end

    assert_redirected_to gestalt_url(Gestalt.last)
  end

  test "should show gestalt" do
    get gestalt_url(@gestalt)
    assert_response :success
  end

  test "should get edit" do
    get edit_gestalt_url(@gestalt)
    assert_response :success
  end

  test "should update gestalt" do
    patch gestalt_url(@gestalt), params: { gestalt: { name_of_perpetrator: @gestalt.name_of_perpetrator, suggested_punishment: @gestalt.suggested_punishment, time_of_offence: @gestalt.time_of_offence, type_of_offence: @gestalt.type_of_offence } }
    assert_redirected_to gestalt_url(@gestalt)
  end

  test "should destroy gestalt" do
    assert_difference('Gestalt.count', -1) do
      delete gestalt_url(@gestalt)
    end

    assert_redirected_to gestalts_url
  end
end
