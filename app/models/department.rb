class Department < ActiveRecord::Base
  
  belongs_to :division
  has_many :roles, :through => :jobs
  has_many :jobs, dependent: :destroy

end