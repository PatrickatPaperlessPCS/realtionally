class ChargesController < ApplicationController
def new
end

def create
	  # Amount in cents
	  token = params[:stripeToken]

	  customer = Stripe::Customer.create(
		  :source => token, # obtained from Stripe.js
		  :plan => "39",
		  :email => current_user.email,
		  #:coupon => current_user.referall
	  	)

	  current_user.paid = true
	  current_user.save!
	  UserMailer.email(current_user).deliver_later
	  UserMailer.paid(current_user).deliver_later
	  redirect_to root_path

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end

end