module SessionsHelper
  def log_in(participant)
    session[:participant_id] = participant.id
  end

  def current_participant
    @current_participant ||= Participant.find_by(id: session[:participant_id])
  end

  def logged_in?
   !current_participant.nil?
 end
end
