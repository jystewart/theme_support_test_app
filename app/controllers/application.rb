# We keep this so we can test on older versions of Rails

class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  filter_parameter_logging :password
  
  theme :get_theme
  
  def get_theme
    params[:theme] ? params[:theme] : nil
  end
end
