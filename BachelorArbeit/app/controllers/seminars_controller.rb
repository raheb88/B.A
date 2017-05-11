class SeminarsController  < ApplicationController
  def index
    @seminars = Seminar.all
  end
  def new
    @seminar = Seminar.new
  end

  def edit
    @seminar = Seminar.find(params[:id])
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

  def update
    @seminar = Seminar.find(params[:id])
    if @seminar.update(seminar_params)
      flash[:notice] = "Seminar was successfully updated"
      redirect_to seminar_path(@seminar)
    else
      render 'edit'
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
