class CustomersController < ApplicationController

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create(customer_params)
		redirect_to new_customer_path
	end

	private
		def customer_params
			params.require(:customer).permit(:name, :email)
		end	
end