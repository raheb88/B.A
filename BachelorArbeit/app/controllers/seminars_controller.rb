class SeminarsController  < ApplicationController
  before_action :set_seminar, only: [:edit, :update, :show, :destroy]

  def index
    @seminars = Seminar.all
  end
  def new
    @seminar = Seminar.new
  end

  def edit
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

    if @seminar.update(seminar_params)
      flash[:notice] = "Seminar was successfully updated"
      redirect_to seminar_path(@seminar)
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @seminar.destroy
    flash[:notice] = "Seminar was successfully deleted"
    redirect_to seminars_path
  end

  private
  def set_seminar
    @seminar = Seminar.find(params[:id])
  end
  def seminar_params
    params.require(:seminar).permit(:title, :description)
  end
end
