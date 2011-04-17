class List < ActiveRecord::Base
  belongs_to :category
  has_many :list_items
  
  def pretty_name
    self.name || "List #{self.id}"
  end
  
  def relative_due_date
    # TODO: make this actually relative
    self.due_at.to_s
  end
end
