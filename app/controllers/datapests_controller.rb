class DatapestsController < ApplicationController
    before_action :authenticate_admin!
    before_action :find_datapest, only: [:show, :edit, :update, :destroy]

    def index
        if params[:plantecopest].blank?
        @datapests = Datapest.all
        else
        @plantecopest_id = Plantecopest.find_by(name_th: params[:plantecopest]).id
        @datapests = Datapest.where(:plantecopest_id => @plantecopest_id)
        end
    end

    def show
    end

    def new
    @datapest = Datapest.new
    @plantecopests = Plantecopest.all.map{ |c| [c.name_th, c.id] }
    end

    def create
        @datapest = Datapest.new(datapest_params)
        @datapest.plantecopest_id = params[:plantecopest_id]
        if @datapest.save
            redirect_to datapests_path
        else
            render 'new'
        end
    end

    def edit
        @plantecopests = Plantecopest.all.map{ |c| [c.name_th, c.id] }
    end

    def update
        @plantecopests = Plantecopest.all.map{ |c| [c.name_th, c.id] }
        if @datapest.update(datapest_params)
            redirect_to datapests_path
        else
            render 'edit'
        end
    end

    def destroy
        @datapest.destroy
        redirect_to datapests_path
    end

    private
    
    def datapest_params
params.require(:datapest).permit(:name_th, :name_en, :body, :plantecopest_id)
    end
    
    def find_datapest
        @datapest = Datapest.find(params[:id])
    end
end


