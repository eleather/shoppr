class ListItemsController < ApplicationController
  
  def toggle_completion
    @list_item = ListItem.find(params[:id])
    
    
  end
end
