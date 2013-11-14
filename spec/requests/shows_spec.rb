require 'spec_helper'

describe "Shows" do
  it "should be able to add new shows" do
    visit "/"

    page.should have_content("Shows List")

    click_link("New Show")

    page.should have_content("New Show")

    fill_in "Name", :with => "Family Guy"
    fill_in "Picture", :with => "http://somephoto.com"

    click_button "Submit"

    page.should have_content "Shows List"
    page.should have_content "Family Guy"
    page.should have_content "http://somephoto.com"
  end

  describe "action existing record" do
    let!(:show) { FactoryGirl.create(:show) }

    it "should be able to delete a show" do
      visit "/"

      click_link("Delete")

      page.should have_no_content("Delete")
    end
  end
end
