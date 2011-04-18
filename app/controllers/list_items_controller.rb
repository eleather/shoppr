class ListItemsController < ApplicationController
  
  def create
    @list_item = ListItem.create(params[:list_item])
    
    render @list_item
  end
  
  def toggle_completion
    @list_item = ListItem.find(params[:id])
    
    puts @list_item.inspect
    
    if @list_item.completed?
      @list_item.mark_incomplete
    else
      @list_item.mark_completed
    end
    
    puts @list_item.inspect
    
    render :partial => 'list_items/actionable_checkbox', :locals => {:list_item => @list_item, :id_to_replace => "#{params[:id_to_replace]}"}
  end
end
