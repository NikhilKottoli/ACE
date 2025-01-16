class HomeController < ApplicationController
  def index
  end

  def pay
    # Amount in paisa
    amount = 100000

    payment = Razorpay::Order.create(amount: amount, currency: 'INR', receipt: 'order_receipt')

    redirect_to root_path
  rescue Razorpay::Error => e
    flash[:error] = "Payment failed: #{e.message}"
  end
end
