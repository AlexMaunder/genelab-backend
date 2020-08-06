class LabnotesController < ApplicationController

  def index
      @labnotes = Labnote.all
      render :json => @labnotes
    end

  def show
    @labnote = Labnote.find params[:id]
    render :json => @labnote
  end

end
