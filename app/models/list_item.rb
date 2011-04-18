class ListItem < ActiveRecord::Base
  belongs_to :list
  
  def pretty_name
    self.name || "List Item #{self.id}"
  end
  
  def completed?
    completed_at and !completed_at.nil?
  end
  
  def mark_completed
    update_attributes(:completed_at => Time.now)
  end
  
  def mark_incomplete
    update_attributes(:completed_at => nil, :completed_by =>  nil)
  end
end
