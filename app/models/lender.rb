class Lender < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :email, :password, :money, presence:true

end
