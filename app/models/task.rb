class Task < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true

  belongs_to :owner, :inverse_of => :tasks, :validate => true
  validates :owner, :presence => true
end
