require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '#merchants' do
    it 'returns an array of Merchant objects', :vcr do
        merchant_facade = MerchantFacade.new

        merchants = merchant_facade.merchants

        expect(merchants).to be_an(Array)
        expect(merchants.first).to be_a(Merchant)
    end
  end

  describe '#specific_merchant' do
    it 'returns an array of Item objects', :vcr do
        merchant_facade = MerchantFacade.new("2")

        items = merchant_facade.specific_merchant

        expect(items).to be_an(Array)
        expect(items.first).to be_a(Item)
    end
  end
end