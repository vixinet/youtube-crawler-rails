require 'test_helper'

class MetadataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metadatum = metadata(:one)
  end

  test "should get index" do
    get metadata_url
    assert_response :success
  end

  test "should get new" do
    get new_metadatum_url
    assert_response :success
  end

  test "should create metadatum" do
    assert_difference('Metadatum.count') do
      post metadata_url, params: { metadatum: { entry_id: @metadatum.entry_id, meta_rule_id: @metadatum.meta_rule_id, value: @metadatum.value } }
    end

    assert_redirected_to metadatum_url(Metadatum.last)
  end

  test "should show metadatum" do
    get metadatum_url(@metadatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_metadatum_url(@metadatum)
    assert_response :success
  end

  test "should update metadatum" do
    patch metadatum_url(@metadatum), params: { metadatum: { entry_id: @metadatum.entry_id, meta_rule_id: @metadatum.meta_rule_id, value: @metadatum.value } }
    assert_redirected_to metadatum_url(@metadatum)
  end

  test "should destroy metadatum" do
    assert_difference('Metadatum.count', -1) do
      delete metadatum_url(@metadatum)
    end

    assert_redirected_to metadata_url
  end
end
