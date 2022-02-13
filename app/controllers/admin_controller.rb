class AdminController < ApplicationController
  before_action :authenticate_admin!
  def home
  end
  
  def read
    redirect_to root_path
  end

  def datainsert

  end

  def datainsert_2
  
  end
end
