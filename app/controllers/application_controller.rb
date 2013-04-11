class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_admin

  def check_admin
    @editable = true
  end

end
