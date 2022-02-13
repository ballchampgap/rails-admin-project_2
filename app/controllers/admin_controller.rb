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
end
