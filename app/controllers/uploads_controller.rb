class UploadsController < ApplicationController
  def new
  end

  def create
    Rails.logger.debug current_user.userfile
    @current_user.userfile.purge
    @current_user.userfile.attach(params[:userfile])
    redirect_to action: 'index'
  end

  def index
    Rails.logger.debug current_user.userfile
    if current_user.userfile.attached?
      @userfile = url_for(@current_user.userfile)
    else
      @userfile = ""
    end
    Rails.logger.debug @userfile
  end
end