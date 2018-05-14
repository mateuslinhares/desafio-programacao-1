class PurchasesController < ApplicationController
  def index
    @revenue = Purchase.revenue
    @purchases = Purchase.summary
  end

  def new
    @purchase = Purchase.new
  end

  def create
    consumer = PurchaseFileConsumer.new(purchase_params[:file].tempfile)
    consumer.consume

    redirect_to purchases_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(:file)
  end
end