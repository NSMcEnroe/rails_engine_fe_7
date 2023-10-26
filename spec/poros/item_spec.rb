require  "rails_helper"

RSpec.describe Item do
  it "exists" do
    attrs = {
      attributes: {
        name: "Toothbrush"
      }
    }

    merchant = Merchant.new(attrs)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq("Toothbrush")
  end
end