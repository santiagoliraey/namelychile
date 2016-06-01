class Role < ActiveRecord::Base
  
  has_many :jobs, dependent: :destroy
  has_many :departments, :through => :jobs
  
end