class SeminarsController < ApplicationController
  #attr_accessor :seminar
  def new
    @seminar = Seminar.new
#   @participant = Participant.new
  end

  def index
    @seminars = Seminar.all
    #@participant = Participant.new
    #@particpant = Participant.find(params[:id])
  #  debugger

  end

  def show
    @seminar = Seminar.find(params[:id])
    @participants = @seminar.participants(particpant: params[:id])
  end

  def create
    @seminar = Seminar.new(seminar_params)

    respond_to do |format|
      if @seminar.save
        format.html { redirect_to @seminar, notice: 'Seminar was successfully created.' }
      #  format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
      #  format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



  #private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @seminar = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminar_params
      params.require(:seminar).permit(:title, :description)
    end

end
