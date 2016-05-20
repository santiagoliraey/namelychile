class Department < ActiveRecord::Base
  
  belongs_to :division
  has_many :employees

end