class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def require_login
  	redirect_to '/' if session[:lender_id]==nil && session[:borrower_id]==nil
  	
  end
  # def require_correct_user
  # 	lender=Lender.find(session[:lender_id])
  # 	borrower=Borrower.find(session[:borrower_id])
  # 	redirect_to '/' if current_user != lender || current_user != borrower
  # end
end
