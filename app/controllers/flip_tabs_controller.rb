class FlipTabsController < ApplicationController

  def stub
    if params.include? "title"
      title = params[:title]
    else
      title = "New Flip Tab"
    end
    require 'ostruct'
    flip_tab_listing = {
        :id => 0,
        :title => title,
        :content => ""
    }
    flip_tab_listing = OpenStruct.new flip_tab_listing
    render :partial => 'flip_tabs/flip_tab_listing', :locals => { :flip_tab_listing => flip_tab_listing }
  end

end
