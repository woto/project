class Owner < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true

  has_many :tasks, :inverse_of => :owner
  attr_accessible :tasks_attributes
  accepts_nested_attributes_for :tasks 
end
