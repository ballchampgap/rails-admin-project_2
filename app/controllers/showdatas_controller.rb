class ShowdatasController < ApplicationController
  layout 'showuser'
  def index
      if params[:plantecoepidemic].blank?
      @dataepidemics = Dataepidemic.all
      else
      @plantecoepidemic_id = Plantecoepidemic.find_by(name_th: params[:plantecoepidemic]).id
      @dataepidemics = Dataepidemic.where(:plantecoepidemic_id => @plantecoepidemic_id)
      end
  end

  def index2
    if params[:plantecopest].blank?
      @datapests = Datapest.all
      else
      @plantecopest_id = Plantecopest.find_by(name_th: params[:plantecopest]).id
      @datapests = Datapest.where(:plantecopest_id => @plantecopest_id)
      end
  end

  def showepidemic
    @epidemics = Dataepidemic.find(params[:id])
  end

  def showpest
    @pests = Datapest.find(params[:id])
  end
end
