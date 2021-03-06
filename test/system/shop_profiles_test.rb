require "application_system_test_case"

class ShopProfilesTest < ApplicationSystemTestCase
  setup do
    @shop_profile = shop_profiles(:one)
  end

  test "visiting the index" do
    visit shop_profiles_url
    assert_selector "h1", text: "Shop Profiles"
  end

  test "creating a Shop profile" do
    visit shop_profiles_url
    click_on "New Shop Profile"

    fill_in "About", with: @shop_profile.about
    fill_in "Business Name", with: @shop_profile.business_name
    fill_in "Contact Number", with: @shop_profile.contact_number
    fill_in "Location", with: @shop_profile.location
    fill_in "User", with: @shop_profile.user_id
    click_on "Create Shop profile"

    assert_text "Shop profile was successfully created"
    click_on "Back"
  end

  test "updating a Shop profile" do
    visit shop_profiles_url
    click_on "Edit", match: :first

    fill_in "About", with: @shop_profile.about
    fill_in "Business Name", with: @shop_profile.business_name
    fill_in "Contact Number", with: @shop_profile.contact_number
    fill_in "Location", with: @shop_profile.location
    fill_in "User", with: @shop_profile.user_id
    click_on "Update Shop profile"

    assert_text "Shop profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop profile" do
    visit shop_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop profile was successfully destroyed"
  end
end
