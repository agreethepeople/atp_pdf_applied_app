ActiveAdmin.register Issue do
  
  index do
    column :title
    column :statement
    column :slug
    
    default_actions
  end
  
#  show do
#    panel "Related Arguments" do
      #table_for issue.arguments do
      #  column :argument_shorthand
      #  column :argument_for_text
      #  column :argument_anti_text
      #end
#    end

#    active_admin_comments
#  end
  
  form do |f|
    f.inputs "Issue Details" do
      f.input :title, :maxlength => 30
      f.input :statement
      f.input :slug
    end
    f.buttons

    f.has_many :arguments do |argument|
      argument.inputs "Related Arguments" do
        argument.input :shorthand 
        argument.input :for_text 
        argument.input :anti_text 
      end
    end
    
#    f.has_many :arguments do |issue_arg|
#      issue_arg.inputs "Arguments" do
#        if !issue_arg.object.nil?
          # show the destroy checkbox only if it is an existing argument
          # else, there's already dynamic JS to add / remove new argument
#          issue_arg.input :_destroy, :as => :boolean, :label => "Not Related?"
#        end

#        issue_arg.input :argument_shorthand
#        issue_arg.input :argument_for_text
#        issue_arg.input :argument_anti_text
#      end
#    end
  end
  
end
