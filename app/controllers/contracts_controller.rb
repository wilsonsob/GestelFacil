class ContractsController < ApplicationController
  before_action :find, only: %i[show edit update]

  def index
    @contracts = Contract.all
  end

  def show
    @commission = Commission.new
    # @current_commission = @contract.commissions.each{|commission|commission.user_id}
    # @users_nonmembers = User.all.reject.{@contract.commissions.each{|commission| commission.user}}
    # @user = current_user
    # @my_commissions = Commission.where(user_id: @user)
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to @contract, notice: "Contrato nº #{@contract.number} cadastrado com sucesso."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @contract.update(contract_params)
      redirect_to @contract, notice: "Contrato nº #{@contract.number} atualizado com sucesso."
    else
      render :edit
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
