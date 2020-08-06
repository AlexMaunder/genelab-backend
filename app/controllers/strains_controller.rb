class StrainsController < ApplicationController

  def index
      @strains = Strain.all
      render :json => @strains, :include => :users
    end

  def show
    @strain = Strain.find params[:id]
    render :json => @strain, :include => :users
  end

  def create
    @strain = Strain.new(strain_params)
    respond_to do |format|
      if @strain.save
        format.json { render :show, status: :created, location: @strain }
      else
        format.json { render json: @strain.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def strain_params
    params.require(:name).permit(:mating_type, :morphology, :gm, :is_child, :acid_tolerance, :ferment_rate, :traits, :image)
  end
end
