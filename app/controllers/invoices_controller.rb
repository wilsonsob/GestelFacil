class InvoicesController < ApplicationController
  before_action :set_term, only: %i[new create]
  before_action :set_invoice, only: %i[show update]

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.term_id = @term.id
    @invoice.value = invoice.details.sum(:value)
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
    # mostra a competencia 'mm/aaaa' da invoice - partial header
    @invoice_cycle =
      if @invoice.details.uniq(&:date_invoice).count == 1
        @invoice.details.first.date_invoice.strftime("%m/%Y")
      else
        "mais de uma competencia encontrada"
      end
    # partial cnpj - Verifica se o cnpj da fatura confere com o cadastro
    @correct_cnpj_contractor = correct_cnpj_contractor?(@invoice)
    # partial fixed price - lista itens de preço fixo (contract/term)
    @items = list_fixed_price_items(@invoice)
    @total_details = total_details(@invoice)
  end

  def update
    if @invoice.update(invoice_params)
      redirect_to @invoice, notice: "Anotação salva."
    else
      render :edit
    end
  end



  private

  def invoice_params
    params.require(:invoice).permit(:number, :value, :term_id, :file, :note)
  end

  def set_term
    @term = Term.find(params[:term_id])
  end

  def correct_cnpj_contractor?(invoice)
    @invoice.details.first.cnpj_contractor == invoice.term.contract.cnpj_contractor
  end

  def list_fixed_price_items(invoice)
    # @items = invoice.term.items.where(fixed_price: true)
  end

  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  def total_details(invoice)
    @total_details = invoice.details.sum(:value)
  end
end
