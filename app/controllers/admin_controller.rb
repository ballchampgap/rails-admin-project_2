class AdminController < ApplicationController
  before_action :authenticate_admin!
  def home
  end
  
  def read
    redirect_to root_path
  end

  def datainsert
    @epidemics = Epidemic.all
  end

  def datainsert_2
    @pests = Pest.all
  end
  
  def remove_data
    data = Pest.find(params[:id])
    data.destroy
    redirect_to datainsert2_path
  end

  def remove_data2
    data2 = Epidemic.find(params[:id])
    data2.destroy
    redirect_to datainsert_path
  end

  def data_info_epidemic
    @epidemics = Epidemic.find(params[:id])
  end

  def data_info_pest
    @pests = Pest.find(params[:id])
  end
end
