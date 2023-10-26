class MerchantFacade
  def initialize
  end

  def merchants 
    data = MerchantDatabaseService.new.all_merchants

    data[:attributes].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end