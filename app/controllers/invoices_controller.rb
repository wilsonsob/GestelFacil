class InvoicesController < ApplicationController
before_action :set_term, only: %i[new create]

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.term_id = @term.id
    if @invoice.save
      redirect_to invoices_path, notice: 'Fatura salva'
    else
      render :new
    end
  end

  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find(params[:id])
  end


  private

  def invoice_params
    params.require(:invoice).permit(:number, :service_code, :value, :cnpj_contractor, :file)
  end

  def set_term
    @term = Term.find(params[:term_id])
  end
end
