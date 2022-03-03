class ComplainSectionsController < ApplicationController
  before_action :set_complain_section, only: %i[ show edit update destroy ]

  # GET /complain_sections or /complain_sections.json
  def index
    @complain_sections = ComplainSection.all
  end

  # GET /complain_sections/1 or /complain_sections/1.json
  def show
  end

  # GET /complain_sections/new
  def new
    @complain_section = ComplainSection.new
  end

  # GET /complain_sections/1/edit
  def edit
  end

  # POST /complain_sections or /complain_sections.json
  def create
    @complain_section = ComplainSection.new(complain_section_params)

    respond_to do |format|
      if @complain_section.save
        format.html { redirect_to complain_section_url(@complain_section), notice: "Complain section was successfully created." }
        format.json { render :show, status: :created, location: @complain_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complain_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complain_sections/1 or /complain_sections/1.json
  def update
    respond_to do |format|
      if @complain_section.update(complain_section_params)
        format.html { redirect_to complain_section_url(@complain_section), notice: "Complain section was successfully updated." }
        format.json { render :show, status: :ok, location: @complain_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complain_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complain_sections/1 or /complain_sections/1.json
  def destroy
    @complain_section.destroy

    respond_to do |format|
      format.html { redirect_to complain_sections_url, notice: "Complain section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complain_section
      @complain_section = ComplainSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complain_section_params
      params.require(:complain_section).permit(:section)
    end
end
