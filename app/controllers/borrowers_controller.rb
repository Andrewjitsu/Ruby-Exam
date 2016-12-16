class BorrowersController < ApplicationController
	before_action :require_login, except: [:create]
	# before_action :require_correct_user, only: [:show, :update]
	def create
		Borrower.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], money_for: params[:money_for], description: params[:description], amount: params[:amount])
		flash[:notice]="Successfully Registered as a Borrower"
		redirect_to '/'
	end
	def show
		@borrower=Borrower.find(request.session[:borrower_id])
	end
	def update
		lent=params[:money_lent]
		if @raised
			@raised+=lent
		end
	end
		
end
