class ListItem < ActiveRecord::Base
  belongs_to :list
  
  def pretty_name
    self.name || "List Item #{self.id}"
  end
  
  def completed?
    self.completed_at and !self.completed_at.null?
  end
end
