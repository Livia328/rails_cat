require "test_helper"

class CampusCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campus_cat = campus_cats(:one)
  end

  test "should get index" do
    get campus_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_campus_cat_url
    assert_response :success
  end

  test "should create campus_cat" do
    assert_difference("CampusCat.count") do
      post campus_cats_url, params: { campus_cat: { age: @campus_cat.age, contact: @campus_cat.contact, name: @campus_cat.name, species: @campus_cat.species } }
    end

    assert_redirected_to campus_cat_url(CampusCat.last)
  end

  test "should show campus_cat" do
    get campus_cat_url(@campus_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_campus_cat_url(@campus_cat)
    assert_response :success
  end

  test "should update campus_cat" do
    patch campus_cat_url(@campus_cat), params: { campus_cat: { age: @campus_cat.age, contact: @campus_cat.contact, name: @campus_cat.name, species: @campus_cat.species } }
    assert_redirected_to campus_cat_url(@campus_cat)
  end

  test "should destroy campus_cat" do
    assert_difference("CampusCat.count", -1) do
      delete campus_cat_url(@campus_cat)
    end

    assert_redirected_to campus_cats_url
  end
end
