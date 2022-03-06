class ComplainSectionsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_complain_section, only: [ :destroy]
  def new
    @complain_sections = ComplainSection.all
    @complain_section = ComplainSection.new
  end
  
  def create
    @complain_section = ComplainSection.new(complain_section_params)

    if @complain_section.save
      redirect_to new_complain_section_path
    else
      render 'new'
   end
  end

  def destroy
    @complain_section.destroy
    redirect_to new_complain_section_path
  end

  private

  def complain_section_params
    params.require(:complain_section).permit(:section)
  end

  def find_complain_section
    @complain_section = ComplainSection.find(params[:id])
  end
end
