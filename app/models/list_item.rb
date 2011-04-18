class ListItem < ActiveRecord::Base
  belongs_to :list
  
  def pretty_name
    self.name || "List Item #{self.id}"
  end
  
  def completed?
    completed_at and !completed_at.nil?
  end
  
  def mark_completed
    puts 'marking completed'
    completed_at = Time.now
    # self.completed_by = current_user.id
    save!
  end
  
  def mark_incomplete
    puts 'marking incomplete'
    completed_at = nil
    completed_by = nil
    save!
  end
end
