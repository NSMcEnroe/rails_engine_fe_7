require "rails_helper"

RSpec.describe "Merchants Show Page" do
  it 'displays a list of items belonging to a merchant', :vcr do
    visit "/merchants/1"
    
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Qui Esse")
  end
end