class WithLayoutController < ApplicationController
  def specific
    render :layout => 'for_action'
  end
  
  def no_theme
    render :layout => 'unthemed'
  end
end
