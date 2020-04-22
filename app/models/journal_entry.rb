class JournalEntry < ActiveRecord::Base
  belongs_to :user

  def format_created_at
    self.created_at.to_date
  end

end
