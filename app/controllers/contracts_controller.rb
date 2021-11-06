class ContractsController < ApplicationController
before_action :find, only: [:show]

  def index
    @contracts = Contract.all
  end

  def show
  end

  private

  def find
    @contract = Contract.find(params[:id])
  end

  def product_params
    params.require(:contract).permit(:number, :company, :object, :cnpj_contractor, :cnpj_hired)
  end
end
