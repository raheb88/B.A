class ParticipantRegistrationController < ApplicationController
  def new
    @registeration = ParticipantRegistration.new 
  end
end
