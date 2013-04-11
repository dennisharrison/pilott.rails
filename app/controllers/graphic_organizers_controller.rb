class GraphicOrganizersController < ApplicationController

  def stub
    require 'ostruct'
    graphic_organizer_listing = {
        :id => 0,
        :title => "Graphic Organizer"
    }
    graphic_organizer_listing = OpenStruct.new graphic_organizer_listing
    render :partial => 'graphic_organizers/graphic_organizer_listing', :locals => { :graphic_organizer_listing => graphic_organizer_listing }
  end

end
