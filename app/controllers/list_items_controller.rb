class ListItemsController < ApplicationController
  
  def create
    @list_item = ListItem.create(params[:list_item])
    
    render @list_item
  end
  
  def toggle_completion
    @list_item = ListItem.find(params[:id])
    
    @list_item.update_attribute(:completed, !@list_item.completed)
    
    render :partial => 'list_items/actionable_checkbox', :locals => {:list_item => @list_item, :id_to_replace => "#{params[:id_to_replace]}"}
  end
end
