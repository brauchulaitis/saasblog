class CheckoutController < ApplicationController

  def create
    @session = Stripe::Checkout::Session.create({
      success_url: posts_url,
      line_items: [
        {price: 'price_1OHlJNCzVNhathB8pWk4Kadl', quantity: 1},
      ],
      mode: 'subscription',
    })
    puts @session;
    # respond_to do |format|
    #   format.js
    # end
    redirect_to @session.url, allow_other_host: true
  end

end
