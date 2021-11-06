class ContractsController < ApplicationController
before_action :find, only: [:show]

  def index
    @contracts = Contract.all
  end

  def show
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to @contract, notice: 'Novo contrato cadastrado com sucesso.'
    else
      render :new
    end
  end

  private

  def find
    @contract = Contract.find(params[:id])
  end

  def contract_params
    params.require(:contract).permit(:number, :company, :object, :cnpj_contractor, :cnpj_hired)
  end
end
