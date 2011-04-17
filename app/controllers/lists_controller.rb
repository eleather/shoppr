class ListsController < ApplicationController
  layout false
  
  def show
    @list = List.find(params[:id])
  end
  
end
