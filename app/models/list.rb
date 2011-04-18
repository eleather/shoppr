class List < ActiveRecord::Base
  belongs_to :category
  has_many :list_items
  
  def pretty_name
    @name || "List #{self.id}"
  end
  
  def completed?
    self.completed_at and !self.completed_at.nil?
  end
end
