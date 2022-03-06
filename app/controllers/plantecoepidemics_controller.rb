class PlantecoepidemicsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_plantecoepidemic, only: [ :edit, :update, :destroy]
  def new
    @plantecoepidemics = Plantecoepidemic.all
    @plantecoepidemic = Plantecoepidemic.new
  end
  
  def create
    @plantecoepidemic = Plantecoepidemic.new(plantecoepidemic_params)

    if @plantecoepidemic.save
      redirect_to new_plantecoepidemic_path
    else
      render 'new'
   end
  end

  def edit
  end

  def update
    if @plantecoepidemic.update(plantecoepidemic_params)
      redirect_to  new_plantecoepidemic_path
    else
      render 'edit'
    end
  end

  def destroy
    @plantecoepidemic.destroy
    redirect_to  new_plantecoepidemic_path
  end

  private

  def plantecoepidemic_params
    params.require(:plantecoepidemic).permit(:name_th, :name_en)
  end

  def find_plantecoepidemic
  @plantecoepidemic = Plantecoepidemic.find(params[:id])
  end
end
