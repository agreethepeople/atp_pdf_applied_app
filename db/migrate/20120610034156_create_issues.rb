class CreateIssues < ActiveRecord::Migration
  def up
    create_table :issues do |t|
      t.text :title, :null => false
      t.text :statement, :null => false
      t.text :slug
      t.timestamps
    end

    execute("ALTER TABLE issues ADD CONSTRAINT issues_title_length CHECK (LENGTH(title) < 30);")
    execute("ALTER TABLE issues ADD CONSTRAINT issues_statement_length CHECK (LENGTH(statement) < 130);")
    execute("ALTER TABLE issues ADD CONSTRAINT issues_slug_length CHECK (LENGTH(slug) < 50);")
    
  end
  
  def down
    drop_table :issues
  end
end
