class MerchantsController < ApplicationController
  def index
    @facade = MerchantFacade.new
  end
  
  def show
  end
end
