class MainController < ApplicationController
  
  def index
    @lists = [
      {:name => 'List A', :category => {:name => 'Category A'}, :due_at => 'today', :description => 'Desc A'},
      {:name => 'List B', :category => {:name => 'Category B'}, :due_at => 'tomorrow', :description => 'Desc B'},
      {:name => 'List C', :category => {:name => 'Category B'}, :due_at => 'friday', :description => 'Desc C'}
    ]
  end
  
end
