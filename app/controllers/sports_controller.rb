class SportsController < ApplicationController
  before_action :set_sport, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  #before running any actions, check correct user
  before_action :correct_user, only:[:edit, :update, :destroy]
  
  # GET /sports or /sports.json
  def index
    @sports = Sport.all
  end

  # GET /sports/1 or /sports/1.json
  def show
  end

  # GET /sports/new
  def new
    #@sport = Sport.new
    #current user to associate with
    @sport = current_user.sports.build
  end

  # GET /sports/1/edit
  def edit
  end

  # POST /sports or /sports.json
  def create
    #@sport = Sport.new(sport_params)
    @sport = current_user.sports.build(sport_params)

    respond_to do |format|
      if @sport.save
        format.html { redirect_to sport_url(@sport), notice: "Sport was successfully created." }
        format.json { render :show, status: :created, location: @sport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sports/1 or /sports/1.json
  def update
    respond_to do |format|
      if @sport.update(sport_params)
        format.html { redirect_to sport_url(@sport), notice: "Sport was successfully updated." }
        format.json { render :show, status: :ok, location: @sport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sports/1 or /sports/1.json
  def destroy
    @sport.destroy

    respond_to do |format|
      format.html { redirect_to sports_url, notice: "Sport was successfully destroyed." }
      format.json { head :no_content }
    end
  end

   def correct_user
    # devise gave it primary id so not using userid
    @sport = current_user.sports.find_by(id: params[:id])
    redirect_to sports_path, notice: "Not authorized to edit this sport" if @sport.nil?
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = Sport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sport_params
      params.require(:sport).permit(:sport_name, :sport_equipement, :player_count, :user_id)
    end
end
