class ListsController < ApplicationController
  layout false
  
  def show
    @list = List.find(params[:id])
  end
  
  def create
    @list = List.create(params[:list])
    @show_list = true
    
    render @list
  end
  
  def edit
    @list = List.find(params[:id])
    
    render :partial => 'lists/edit', :locals => {:list => @list, :id_to_replace => "#{params[:id_to_replace]}"}
  end
  
  # PUT /lists/1
  # PUT /lists/1.xml
  def update
    @list = List.find(params[:id])
    @show_list = true

    respond_to do |format|
      if @list.update_attributes(params[:list])
        format.html { render @list }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adventure.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
