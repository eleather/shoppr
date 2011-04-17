class Category < ActiveRecord::Base
  has_many :lists
  
  def pretty_name
    self.name || "Category #{self.id}"
  end
end
