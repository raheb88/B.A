class ParticipantsController <  ApplicationController
  def index
  #  @participants = Participant.paginate(page: params[:page], per_page: 2)
   @participants = Participant.all
  end

  def new
    @participant = Participant.new
  end

  def show
    @participant = Participant.find(params[:id])
  end

  def create
    @participant = Participant.new(participant_params)
      if @participant.save
        flash[:success] = "Welcome to the seminar!"
        redirect_to @participant
      # redirect_to seminars_path
      else
        render 'new'

    end
  end

  private
    def participant_params
      params.require(:participant).permit(:name, :email, :password,
        :password_confirmation)
    end
end
