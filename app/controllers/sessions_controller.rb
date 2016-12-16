class SessionsController < ApplicationController
	# before_action :require_correct_user, only: [:destroy]
	def index
	end
	def create
		@l=Lender.find_by(email: params[:email])
		@b=Borrower.find_by(email: params[:email])
		if @l
			if @l && @l.authenticate(params[:password])
				session[:lender_id]=@l.id
				redirect_to '/lending_online/lender/:id'
			else
				flash[:notice]="Invalid Login Credentials"
			end
		end
		if @b
			if @b && @b.authenticate(params[:password])
				session[:borrower_id]=@b.id
				redirect_to '/lending_online/borrower/:id'
			else
				flash[:notice]="Invalid Login Credentials"
			end
		end
	end
	def destroy
		session[:lender_id]=nil
		session[:borrower_id]=nil
		redirect_to '/'
	end


end
