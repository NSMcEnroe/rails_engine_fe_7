class MerchantsController < ApplicationController
  def index
    @facade = MerchantFacade.new
  end
  
  def show
    @facade = MerchantFacade.new(params[:id])
  end
end
