class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    @my_commissions = Commission.where(user_id: @user)
    @invoices_uniq_number = Invoice.all.uniq(&:number)
  end
end
