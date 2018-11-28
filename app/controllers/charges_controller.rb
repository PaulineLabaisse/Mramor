class ChargesController < ApplicationController

  skip_before_action :verify_authenticity_token



  def new
  end

  def home
  end

  def index
  end

  def create
    # Amount in cents

    @amount = 999

    customer = Stripe::Customer.create(
      :email => 'customer@gmail.com',
      :card => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'customer nouveau',
      :currency => 'eur',
      receipt_email: 'jenny.rosen@example.com'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path

  end

end
