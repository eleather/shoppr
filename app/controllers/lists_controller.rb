class ListsController < ApplicationController
  layout false
  
  def show
    @list = List.find(params[:id])
  end
  
  def create
    @list = List.create(params[:list])
    
    render @list
  end
  
end
