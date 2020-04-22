class AddTitleColumnJournal < ActiveRecord::Migration
  def change
    add_column :journal_entries, :title, :string
  end
end
