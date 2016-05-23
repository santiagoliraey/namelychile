class Job < ActiveRecord::Base
  
  belongs_to :division
  belongs_to :department
  belongs_to :employee
  
end