require 'test_helper'

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resident = residents(:one)
  end

  test "should get index" do
    get residents_url, as: :json
    assert_response :success
  end

  test "should create resident" do
    assert_difference('Resident.count') do
      post residents_url, params: { resident: { apartment_id: @resident.apartment_id, email: @resident.email, external_id: @resident.external_id, first_name: @resident.first_name, last_name: @resident.last_name, phone_number: @resident.phone_number } }, as: :json
    end

    assert_response 201
  end

  test "should show resident" do
    get resident_url(@resident), as: :json
    assert_response :success
  end

  test "should update resident" do
    patch resident_url(@resident), params: { resident: { apartment_id: @resident.apartment_id, email: @resident.email, external_id: @resident.external_id, first_name: @resident.first_name, last_name: @resident.last_name, phone_number: @resident.phone_number } }, as: :json
    assert_response 200
  end

  test "should destroy resident" do
    assert_difference('Resident.count', -1) do
      delete resident_url(@resident), as: :json
    end

    assert_response 204
  end
end
