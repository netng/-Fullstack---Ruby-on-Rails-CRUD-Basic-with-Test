require 'rails_helper'

RSpec.describe "Creating a city", type: :system do
    scenario "valid inputs" do
        visit new_city_path
        fill_in "Name", with: "Bogor"
        click_on "Create City"
        visit cities_path
        expect(page).to have_content("Bogor")
    end
end