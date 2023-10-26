require "rails_helper"

RSpec.describe "Merchants Index Page" do
  it 'displays a list of existing merchant', :vcr do
    visit '/merchants'

    expect(page.status_code).to eq 200
    expect(page).to have_content("Wesh")
  end
end