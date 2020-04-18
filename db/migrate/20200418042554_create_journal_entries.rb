class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false # <- Automatically gives timestamps for anytime create/update a model, want to use this on all models
    end
  end
end
