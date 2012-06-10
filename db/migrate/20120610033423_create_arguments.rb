class CreateArguments < ActiveRecord::Migration
  def up
    create_table(:arguments) do |t|
      t.text :for_text, :null => false
      t.text :anti_text
      t.text :shorthand
      t.text :source
      t.text :source_url
      t.text :notes
      t.timestamps
    end
    
    execute("ALTER TABLE arguments ADD CONSTRAINT arguments_pro_text_length CHECK (LENGTH(for_text) < 130);")
    execute("ALTER TABLE arguments ADD CONSTRAINT arguments_anti_text_length CHECK (LENGTH(anti_text) < 130);")
    execute("ALTER TABLE arguments ADD CONSTRAINT arguments_shorthand_length CHECK (LENGTH(shorthand) < 50);")
    execute("ALTER TABLE arguments ADD CONSTRAINT arguments_source_url_length CHECK (LENGTH(source_url) < 130);")
    
  end
  
  def down
    drop_table :arguments
  end
end
