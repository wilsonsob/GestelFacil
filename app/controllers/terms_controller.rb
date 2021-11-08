class TermsController < ApplicationController
before_action :set_contract, only: %i[new create edit]

  def new
    @term = Term.new
  end

  def create
    @term = Term.new(term_params)
    @term.contract_id = @contract.id
    if @term.save!
      redirect_to @contract, notice: 'Vigência registrada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @term.update(term_params)
      redirect_to @contract, notice: 'A vigência foi atualizado com sucesso.'
    else
      render :edit
    end
  end

  private

  def term_params
    params.require(:term).permit(:contract_id, :date_start, :date_end, :number)
  end

  def set_contract
    @contract = Contract.find(params[:contract_id])
  end
end
