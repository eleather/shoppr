class ListItem < ActiveRecord::Base
  belongs_to :list
  
  def pretty_name
    self.name || "List Item #{self.id}"
  end
end
