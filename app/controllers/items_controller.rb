class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def insert_item
    render({ :template => "item_templates/insert_form" })
  end

  def create_row
    item = Item.new({ :link_url => params[:URL], :link_description => params[:description], :thumbnail_url => params[:thumbnail] })
    item.save

    redirect_to :controller => "items", :action => "index"
  end
end
