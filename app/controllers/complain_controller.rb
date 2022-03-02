class ComplainController < ApplicationController
  before_action :authenticate_admin!
  layout 'application'
  def index
    @complains = Complain.all
  end

  def edit
    @complains = Complain.find(params[:id])
  end

def destroy
  @complains = Complain.find(params[:id])
  @complains.destroy
  redirect_to complain_index_path
end

def detail_complain
  @complains = Complain.find(params[:id])
  @complains.update([:reply])
  redirect_to complain_path
end

def edit
  @complains = Complain.find(params[:id])
  puts 'ggg'
end

def update
  @complain = Complain.find(params[:id])
  

  if @complain.update(complain_params)
    redirect_to complain_path
  else
    
    render :edit, status: :unprocessable_entity
  end
end


private
def complain_params
  params.require(:complain).permit(:reply)
end

end
