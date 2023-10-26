require  "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    attrs = {
      name: "Honey's Hobble"
    }

    merchant = Merchant.new(attrs)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq("Honey's Hobble")
  end
end