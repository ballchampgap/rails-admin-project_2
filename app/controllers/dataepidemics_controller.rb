class DataepidemicsController < ApplicationController
    before_action :authenticate_admin!
    before_action :find_dataepidemic, only: [:show, :edit, :update, :destroy]

    def index
        if params[:plantecoepidemic].blank?
        @dataepidemics = Dataepidemic.all
        else
        @plantecoepidemic_id = Plantecoepidemic.find_by(name_th: params[:plantecoepidemic]).id
        @dataepidemics = Dataepidemic.where(:plantecoepidemic_id => @plantecoepidemic_id)
        end
    end

    def show
    end

    def new
    @dataepidemic = Dataepidemic.new
    @plantecoepidemics = Plantecoepidemic.all.map{ |c| [c.name_th, c.id] }
    end

    def create
        @dataepidemic = Dataepidemic.new(dataepidemic_params)
        @dataepidemic.plantecoepidemic_id = params[:plantecoepidemic_id]
        if @dataepidemic.save
            redirect_to dataepidemics_path
        else
            render 'new'
        end
    end

    def edit
        @plantecoepidemics = Plantecoepidemic.all.map{ |c| [c.name_th, c.id] }
    end

    def update
        @plantecoepidemics = Plantecoepidemic.all.map{ |c| [c.name_th, c.id] }
        if @dataepidemic.update(dataepidemic_params)
            redirect_to dataepidemics_path
        else
            render 'edit'
        end
    end

    def destroy
        @dataepidemic.destroy
        redirect_to dataepidemics_path
    end

    private
    
    def dataepidemic_params
params.require(:dataepidemic).permit(:name_th, :name_en, :body, :plantecoepidemic_id)
    end
    
    def find_dataepidemic
        @dataepidemic = Dataepidemic.find(params[:id])
    end
end
