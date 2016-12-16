class AddReferences < ActiveRecord::Migration
  def change
  	add_reference :borrowers, :lender, index: true
  	add_reference :lenders, :borrower, index: true
  end
end
