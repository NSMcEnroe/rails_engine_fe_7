class MerchantFacade
  def initialize
  end

  def merchants 
    data = MerchantDatabaseService.new.all_merchants

    data[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end