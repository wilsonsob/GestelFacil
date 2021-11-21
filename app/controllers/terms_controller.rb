class TermsController < ApplicationController
  before_action :set_contract, only: %i[new create]
  before_action :set_term, only: %i[edit update show]
  # attr_reader :total_invoice

  def new
    @term = Term.new
  end

  def create
    @term = Term.new(term_params)
    @term.contract_id = @contract.id
    if @term.save
      redirect_to @contract, notice: "Vigência #{@term.date_start.strftime("%d/%m/%Y")} -
      #{@term.date_end.strftime("%d/%m/%Y")} adicionada ao contrato nº #{@term.contract.number}."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @term.update(term_params)
      redirect_to contract_path(@term.contract_id), notice: "Vigência #{@term.date_start.strftime("%d/%m/%Y")} -
      #{@term.date_end.strftime("%d/%m/%Y")} do contrato nº #{@term.contract.number} atualizada com sucesso."
    else
      render :edit
    end
  end

  def show
    @yearly = totalize_term(@term)
    @total_invoices = total_invoices(@term)
    @balance_available = term_balance
    @number_of_months = number_of_months(@term)
  end

  private

  def term_params
    params.require(:term).permit(:date_start, :date_end, :number, :description, :amount)
  end

  def set_contract
    @contract = Contract.find(params[:contract_id])
  end

  def set_term
    @term = Term.find(params[:id])
  end

  def number_of_months(term)
    date_start = term.date_start
    date_end = term.date_end
    @number_of_months = (date_end.month+date_end.year*12) - (date_start.month+date_start.year*12)
  end

  def totalize_term(term)
    @monthly = 0
    term.items.each do |item|
      Item.where(term: :term_id)
      @monthly += item.quantity * item.price
    end
    @yearly = @monthly * number_of_months(term)
  end

  def total_invoices(term)
    @total_invoice = 0
    @total_invoices = 0
    term.invoices.each do |invoice|
      @total_invoice = invoice.details.sum(:value)
      @total_invoices += @total_invoice
    end
    @total_invoices
  end

  def term_balance
    @balance_available = @yearly - @total_invoices
  end
end
