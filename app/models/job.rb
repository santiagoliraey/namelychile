class Job < ActiveRecord::Base
  
  belongs_to :employee
  belongs_to :role
  belongs_to :department
  
end