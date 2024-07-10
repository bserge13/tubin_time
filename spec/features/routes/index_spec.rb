require "rails_helper"

RSpec.describe "routes", type: :feature do 
  describe "it exists" do
    it "has a route", :vcr do
      visit root_path

      expect(current_path).to eq(root_path)
      expect(page).to have_content("Welcome to TubinTime")
      save_and_open_page
    end
  end
end