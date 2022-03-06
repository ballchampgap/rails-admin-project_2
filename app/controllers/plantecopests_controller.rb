class PlantecopestsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_plantecopest, only: [ :edit, :update, :destroy]
  def new
    @plantecopests = Plantecopest.all
    @plantecopest = Plantecopest.new
  end
  
  def create
    @plantecopest = Plantecopest.new(plantecopest_params)

    if @plantecopest.save
      redirect_to new_plantecopest_path
    else
      render 'new'
   end
  end

  def edit
  end

  def update
    if @plantecopest.update(plantecopest_params)
      redirect_to  new_plantecopest_path
    else
      render 'edit'
    end
  end

  def destroy
    @plantecopest.destroy
    redirect_to  new_plantecopest_path
  end

  private

  def plantecopest_params
    params.require(:plantecopest).permit(:name_th, :name_en)
  end

  def find_plantecopest
  @plantecopest = Plantecopest.find(params[:id])
  end
end
