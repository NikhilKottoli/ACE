# app/controllers/subscriptions_controller.rb
class SubscriptionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
      @subscription = Subscription.new(subscription_params)
  
      if @subscription.save
        flash[:success] = "Subscription successful!"
      else
        flash[:error] = "Failed to subscribe. Please try again."
      end
      redirect_to root_path
    end
  
    private
  
    def subscription_params
      params.permit(:email,:commit)
    end
  end