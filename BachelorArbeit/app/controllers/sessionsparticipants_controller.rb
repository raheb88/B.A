class SessionsparticipantsController < ApplicationController
  def new
  end
  def create
    participant = Participant.find_by(email: params[:session][:email].downcase)
      if participant && participant.authenticate(params[:session][:password])
        #log the participant in and redirect to the participant's show page

        redirect_to participant
      #  redirect_to seminars_path
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
  end
  def destroy
  end
end
