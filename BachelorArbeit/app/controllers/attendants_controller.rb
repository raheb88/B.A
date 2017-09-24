class AttendantsController < ApplicationController
    before_action :set_attendant, only: [:show, :edit, :update, :destroy]

    # GET /candies
    # GET /candies.json
    def index
      @attendants = Attendant.all
    end

    # GET /candies/1
    # GET /candies/1.json
    def show
       @attendant_seminars = @attendant.seminars.paginate(page: params[:page], per_page: 2)
    end

    # GET /candies/new
    def new
      @attendant = Attendant.new
      @seminars = Seminar.all
    end

    # GET /candies/1/edit
    def edit
      @Seminar = Seminar.all
    end

    # POST /candies
    # POST /candies.json
    def create
      @attendant = Attendant.new(attendant_params)

      respond_to do |format|
        if @attendant.save
          format.html { redirect_to @attendant, notice: 'attendant was successfully created.' }
          format.json { render action: 'show', status: :created, location: @attendant }
        else
          format.html { render action: 'new' }
          format.json { render json: @attendant.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /candies/1
    # PATCH/PUT /candies/1.json
    def update
      respond_to do |format|
        if @attendant.update(attendant_params)
          format.html { redirect_to @attendant, notice: 'Candy was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @attendant.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /candies/1
    # DELETE /candies/1.json
    def destroy
      @attendant.destroy
      respond_to do |format|
        format.html { redirect_to candies_url }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_attendant
        @attendant = Attendant.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def attendant_params
        params.require(:attendant).permit(:name , :seminar_ids => [])
      end


end
