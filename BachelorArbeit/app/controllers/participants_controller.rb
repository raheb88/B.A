class ParticipantsController <  ApplicationController
  before_action :set_participant, only: [:show, :edit]
  def index
  #  @participants = Participant.paginate(page: params[:page], per_page: 2)
   @participants = Participant.all
  end

  def new
    @participant = Participant.new
    @seminars = Seminar.all
  #  debugger
  end

  def show
  #  @participant = Participant.find(params[:id])
  end

  def edit
    @participant = Participant.all
  end


  def create
    @participant = Participant.new(participant_params)


      if @participant.save
          debugger
        flash[:success] = "Welcome to the seminar!"
        #Bautstelle
        redirect_to seminar_path(@seminar)

      # redirect_to seminars_path
      else
        render 'new'

    end
  end



  private
    def set_participant
      @partcipant = Participant.find(params[:id])
    end
  #

    def participant_params
      params.require(:participant).permit(:name, :email, :password,
        :password_confirmation, :seminar_ids => [])
    end

#    def participant_params
#      params.require(:participant).permit(:name, :seminar_id => [])

#    end
end
