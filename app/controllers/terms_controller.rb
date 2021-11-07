class TermsController < ApplicationController
before_action :set_contract, only: %i[new create]

  def new
    @terms = Term.new
  end

  def create
    @term = Term.new(term_params)
    @term.contract_id = @contract.id
    if @term.save!
      redirect_to @contract, notice: 'Termo vinculado com sucesso.'
    else
      render :new
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
