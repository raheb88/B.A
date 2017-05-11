class SeminarsController  < ApplicationController
  def new
    @seminar = Seminar.new
  end

  def create

    @seminar = Seminar.new(seminar_params)
    if @seminar.save
      flash[:notice] = "Seminar was successfully created"
      redirect_to seminar_path(@seminar)
    else
      render 'new'
    end
  end
  def show
    @seminar = Seminar.find(params[:id]) 
  end

  private
  def seminar_params
    params.require(:seminar).permit(:title, :description)
  end
end
