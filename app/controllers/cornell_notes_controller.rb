class CornellNotesController < ApplicationController

  def stub
    require 'ostruct'
    cornell_notes_listing = {
        :id => 0,
        :title => "Cornell Notes",
        :keys => "Key Points and Themes",
        :notes => "Notes",
        :review => "Review After Class"
    }
    cornell_notes_listing = OpenStruct.new cornell_notes_listing
    render :partial => 'cornell_notes/cornell_notes_listing', :locals => { :cornell_notes_listing => cornell_notes_listing }
  end

end
