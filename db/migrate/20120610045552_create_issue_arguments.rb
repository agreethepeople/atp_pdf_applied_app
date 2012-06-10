class CreateIssueArguments < ActiveRecord::Migration
  def change
    create_table(:issue_arguments) do |t|
      t.references :issue, :null => false
      t.references :argument, :null => false
      t.timestamps
    end
  end
end
