class Argument < ActiveRecord::Base
  has_many :issue_arguments
  has_many :issues, :through => :issue_arguments, :foreign_key => :argument_id
  
  attr_accessible :pro_text, :anti_text, :shorthand, :source, :source_url, :notes
end
