class AdminController < ApplicationController
  before_action :authenticate_admin!
  def home
    
  end
  
  def read
    redirect_to root_path
  end

  def datainsert
    @epidemicsload = Epidemic.all
    @q = Epidemic.ransack(params[:q])
    @epidemics = @q.result(distinct: true).page(params[:page]) 
    respond_to do |format|
      format.html
      format.csv { send_data @epidemicsload.to_csv}
      format.xlsx do
        render xlsx: 'epidemicsload', template: 'admin/whatever'
      end
    end
  end

  def datainsert_2
    @pestsload = Pest.all
    @q = Pest.ransack(params[:q])
    @pests = @q.result(distinct: true).page(params[:page]) 
    respond_to do |format|
      format.html
      format.csv { send_data @pestsload.to_csv}
      format.xlsx do
        render xlsx: 'pestsload', template: 'admin/whatever2'
      end
    end
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

  def admin_list
    @admins = Admin.all
  end

  def remove_admin
    admin = Admin.find(params[:id])
    admin.destroy
    redirect_to admin_list_path
  end

  def addrole
    admin = Admin.find(params[:id])
    admin.add_role :admin_header
    redirect_to admin_list_path
  end
  
  def removerole
    admin = Admin.find(params[:id])
    admin.remove_role :admin_header
    redirect_to admin_list_path
  end
end
