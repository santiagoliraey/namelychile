class Division < ActiveRecord::Base
  
  has_many :departments
  has_many :jobs
  
end