class PaymentIntentsController < ApplicationController
  def create
    # Create a payment intent with the expected amount,
    payment_intent = Stripe::PaymentIntent.create(
      amount: 1000,
      currency: 'usd',
      description: "Order for ",
      statement_descriptor: 'TimeSink submit',
    )
    # return the client secret
    render json: {
      id: payment_intent.id,
      client_secret: payment_intent.client_secret
    }
  end
end
