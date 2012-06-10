class Issue < ActiveRecord::Base
  has_many :issue_arguments
  has_many :arguments, :through => :issue_arguments, :foreign_key => :issue_id

  accepts_nested_attributes_for :arguments, :allow_destroy => true
  
  attr_accessible :title, :statement, :slug
end
