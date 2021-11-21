class DetailsController < ApplicationController
  before_action :set_invoice, only: %i[new create]

  def new
    @detail = Detail.new
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.invoice_id = @invoice.id
    if @detail.save
      redirect_to details_path, notice: 'Arquivo carregado'
    else
      render :new
    end
  end

  def index
    @details = Detail.all
  end

  private

  def detail_params
    params.require(:detail).permit(:invoice_number,
                                   :service_code,
                                   :cnpj_contractor,
                                   :value,
                                   :service_name,
                                   :date_invoice,
                                   :invoice_id,
                                   :file)
  end

  def set_invoice
    @invoice = Invoice.find(params[:invoice_id])
  end
end
