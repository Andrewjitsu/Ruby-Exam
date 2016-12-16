class LendersController < ApplicationController
	before_action :require_login, except: [:index, :create]
	# before_action :require_correct_user, only: [:show, :update]
	def index
	end
	def create
		Lender.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], money: params[:money])
		flash[:notice]="Successfully Registered as a Lender"
		redirect_to '/'
	end
	def show
		@lender=Lender.find(request.session[:lender_id])
		@borrower=Borrower.where("amount > ?", 0)
		@raised=0
	end
		
end
