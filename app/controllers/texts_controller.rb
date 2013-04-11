class TextsController < ApplicationController

  def stub
    require 'ostruct'
    text_listing = {
        :id => 0,
        :title => "Title",
        :content => ""
    }
    text_listing = OpenStruct.new text_listing
    render :partial => 'texts/text_listing', :locals => { :text_listing => text_listing }
  end

end
