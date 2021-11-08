class ItemsController < ApplicationController
before_action :set_term, only: %i[new create]
before_action :set_item, only: %i[edit update]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.term_id = @term.id
    if @item.save!
      redirect_to contract_path(@term.contract_id), notice: 'Item registrado com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to root_path, notice: 'Item atualizado com sucesso.'
      # redirect_to contract_path(@item.term_id.contract_id), notice: 'A vigência foi atualizado com sucesso.'
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_number, :item_title, :service_code, :quantity, :price)
  end

  def set_term
    @term = Term.find(params[:term_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
