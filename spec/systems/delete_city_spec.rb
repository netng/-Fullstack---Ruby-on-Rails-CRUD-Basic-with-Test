require 'rails_helper'

RSpec.describe "Deleting a city", type: :system do
    scenario "success" do
        City.create!(name: "Bogor")
        visit cities_path
        sleep(2)
        expect(page).to have_content("Bogor")

        click_on "Destroy this city"
        accept_alert
        expect(page).not_to have_content("Bogor")
    end
end