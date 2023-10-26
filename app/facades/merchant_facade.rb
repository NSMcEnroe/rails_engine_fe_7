class MerchantFacade
  attr_reader :merchant_id
  def initialize(merchant_id = nil)
    @merchant_id = merchant_id
  end

  def merchants 
    data = MerchantDatabaseService.new.all_merchants

    data[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def specific_merchant
    data  = MerchantDatabaseService.new.specific_merchant_id(@merchant_id)

    data[:data].map do |merchant_data|
      Item.new(merchant_data)
    end
  end
end