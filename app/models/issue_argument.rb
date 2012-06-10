class IssueArgument < ActiveRecord::Base
  belongs_to :issue
  belongs_to :argument
  
  attr_accessible :issue, :argument
end
