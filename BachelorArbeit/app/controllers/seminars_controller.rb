class SeminarsController  < ApplicationController
  before_action :set_seminar, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  def index
    @seminars = Seminar.paginate(page: params[:page], per_page: 5)
  end
  def new
    @seminar = Seminar.new
    @participants = Participant.all

  end

  def edit

  end


  def create
  #  debugger
    @seminar = Seminar.new(seminar_params)
    @seminar.user = User.first
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
  def
    params.require(:kids).permit(:name, :candy_ids => [])
  end
  def require_same_user
    if current_user  != @seminar.user
      flash[:danger] = "You can only edit or delete your own seminars"
      redirect_to root_path
    end
  end
end
