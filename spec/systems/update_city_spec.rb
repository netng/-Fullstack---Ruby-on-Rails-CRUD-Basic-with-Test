require 'rails_helper'

RSpec.describe "Updating a city", type: :system do
    scenario "valid inputs" do
        city = City.create!(name: "Bogor")
        visit edit_city_path(city)
        fill_in "Name", with: "Jakarta"
        click_on "Update City"
        expect(page).to have_content("City was successfully updated")
        visit cities_path
        expect(page).to have_content("Jakarta")
    end
end