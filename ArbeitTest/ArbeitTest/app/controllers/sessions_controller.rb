class SessionsController < ApplicationController
  def new

  end

  def create
    participant = Participant.find_by(email: params[:session][:email].downcase)
   if participant && participant.authenticate(params[:session][:password])
     flash.now[:danger] = 'Invalid email/password combination'
     log_in participant
      redirect_to participant

    else
      render 'new'
  end
end

  def destroy
  end
end
