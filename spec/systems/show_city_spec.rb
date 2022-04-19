require 'rails_helper'

RSpec.describe "showing a city", type: :system do
    scenario "success" do
        city = City.create!(name: "Bogor")
        visit city_path(city)
        expect(page).to have_content("Bogor")
    end
end