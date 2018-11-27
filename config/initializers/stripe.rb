Rails.configuration.stripe = {
  :publisable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

token = params[:stripeToken]

charge = Stripe::Charge.create({
    amount: 999,
    currency: 'usd',
    description: 'Example charge',
    source: token,
})
