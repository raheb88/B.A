module ParticipantRegistrationHelper
  def resource_name
    :participant
  end

  def resource
    @participant ||= Participant.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:participant]
  end

end
