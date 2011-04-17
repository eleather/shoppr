class MainController < ApplicationController
  
  def index
    @lists = [
      {:name => "List A", :category => {:name => "Category A"}},
      {:name => "List B", :category => {:name => "Category B"}},
      {:name => "List C", :category => {:name => "Category B"}}
    ]
  end
  
end
