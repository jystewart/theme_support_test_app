class EmailsController < ApplicationController
  def create
    ThemeMailer.send("deliver_#{params[:email_id]}", :theme => params[:theme])
    redirect_to :action => 'index'
  end
  
end
