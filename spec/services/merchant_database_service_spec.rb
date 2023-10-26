require 'rails_helper'

describe MerchantDatabaseService do
  context "class methods" do
    context "#all_merchants" do
      it "returns all merchants", :vcr do
        search = MerchantDatabaseService.new.all_merchants
        expect(search).to be_a Hash
        expect(search[:data]).to be_an Array

        merchant_data = search[:data].first

        expect(merchant_data[:attributes]).to have_key :name
        expect(merchant_data[:attributes][:name]).to be_a(String)
      end
    end

    context "#specific_merchant_id" do
    it "returns all items of a merchant", :vcr do
      search = MerchantDatabaseService.new.specific_merchant_id("2")
      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array

      item_data = search[:data].first

      expect(item_data[:attributes]).to have_key :name
      expect(item_data[:attributes][:name]).to be_a(String)
    end
  end
  
  end
end