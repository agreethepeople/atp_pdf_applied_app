class IssueArgument < ActiveRecord::Base
  belongs_to :issue
  belongs_to :argument
end
