class ParticipantsController <  ApplicationController
  def index
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
