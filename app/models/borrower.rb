class Borrower < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :email, :password, :money_for, :description, :amount, presence:true
  has_many :lenders
end
