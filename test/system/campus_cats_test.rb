require "application_system_test_case"

class CampusCatsTest < ApplicationSystemTestCase
  setup do
    @campus_cat = campus_cats(:one)
  end

  test "visiting the index" do
    visit campus_cats_url
    assert_selector "h1", text: "Campus cats"
  end

  test "should create campus cat" do
    visit campus_cats_url
    click_on "New campus cat"

    fill_in "Age", with: @campus_cat.age
    fill_in "Contact", with: @campus_cat.contact
    fill_in "Name", with: @campus_cat.name
    fill_in "Species", with: @campus_cat.species
    click_on "Create Campus cat"

    assert_text "Campus cat was successfully created"
    click_on "Back"
  end

  test "should update Campus cat" do
    visit campus_cat_url(@campus_cat)
    click_on "Edit this campus cat", match: :first

    fill_in "Age", with: @campus_cat.age
    fill_in "Contact", with: @campus_cat.contact
    fill_in "Name", with: @campus_cat.name
    fill_in "Species", with: @campus_cat.species
    click_on "Update Campus cat"

    assert_text "Campus cat was successfully updated"
    click_on "Back"
  end

  test "should destroy Campus cat" do
    visit campus_cat_url(@campus_cat)
    click_on "Destroy this campus cat", match: :first

    assert_text "Campus cat was successfully destroyed"
  end
end
