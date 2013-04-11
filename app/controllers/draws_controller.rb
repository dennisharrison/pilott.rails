class DrawsController < ApplicationController

  def stub
    require 'ostruct'
    draw_listing = {
        :id => 0,
        :uuid => UUID.generate,
        :data => ""
    }
    draw_listing = OpenStruct.new draw_listing
    render :partial => 'draws/draw_listing', :locals => { :draw_listing => draw_listing }
  end

end
