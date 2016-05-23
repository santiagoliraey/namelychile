class Department < ActiveRecord::Base
  
  belongs_to :division
  has_many :jobs

end