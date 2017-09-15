class ParticipantsController < ApplicationController
   #before_action  :zuweisungId, only: [:create]
   #attr_accessor :seminar_id
  def initialize


  end
  def index
     @participants = Participant.all
  end

  def new
    @seminar = Seminar.new
    @participant = Participant.new
  #  @seminar = Seminar.new
    @seminar =  Seminar.find(params[:seminar])
  #  debugger
    #hier correct
    @seminar1 = @seminar.id
    @participant.seminar_id = @seminar.id
      # debugger



  end
  def show
    @participant = Participant.find(params[:id])

    #@seminar.method
    #debugger
  #  @seminars = Seminar.all

  end

  def create
  #  @seminar = Seminar.find(params[:id])
     #debugger

       #debugger

    @participant = Participant.new(participant_params)
    #@seminar.id
    #debugger
  # @seminar = Seminar.find_by_id(1)
  #  debugger

  #  debugger


   if @participant.save

     #@seminar = Seminar.find(params[:seminar])
      #debugger
     redirect_to @seminar
     debugger

    #log_in @participant
    #flash[:success] = "Welcome to the Sample App!"


      #  @seminar = Seminar.all
      # @seminar.each do |seminar|
    #  @participant.seminar_id = @seminar
    #  @participant.save
    #   end
  #  if  @participant.save
    #  @participant.seminar_id = @seminar
    # redirect_to seminar_path
    #   flash[:success] = "Welcome to the seminar!"
    #   redirect_to @seminars
  #  redirect_to seminars_path
     else
       render 'new'

   end
 end

 private
   def participant_params
     params.require(:participant).permit( :email, :password, :seminar_id, :seminar)
   end

   def zuweisungId

   end

end
