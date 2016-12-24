class ScubadivesController < ApplicationController
  before_action :set_scubadive, only: [:show, :edit, :update, :destroy]

  # GET /scubadives
  # GET /scubadives.json
  def index
    @scubadives = Scubadive.all
  end

  # GET /scubadives/1
  # GET /scubadives/1.json
  def show
  end

  # GET /scubadives/new
  def new
    @scubadive = Scubadive.new
  end

  # GET /scubadives/1/edit
  def edit
  end

  # POST /scubadives
  # POST /scubadives.json
  def create
    @scubadive = Scubadive.new(scubadive_params)

    respond_to do |format|
      if @scubadive.save
        format.html { redirect_to @scubadive, notice: 'Scubadive was successfully created.' }
        format.json { render :show, status: :created, location: @scubadive }
      else
        format.html { render :new }
        format.json { render json: @scubadive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scubadives/1
  # PATCH/PUT /scubadives/1.json
  def update
    respond_to do |format|
      if @scubadive.update(scubadive_params)
        format.html { redirect_to @scubadive, notice: 'Scubadive was successfully updated.' }
        format.json { render :show, status: :ok, location: @scubadive }
      else
        format.html { render :edit }
        format.json { render json: @scubadive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scubadives/1
  # DELETE /scubadives/1.json
  def destroy
    @scubadive.destroy
    respond_to do |format|
      format.html { redirect_to scubadives_url, notice: 'Scubadive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_scubadive
    @scubadive = Scubadive.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def scubadive_params
    params.require(:scubadive).permit(:user_id, :divespot_id, :gear_set_id, :enjoyment, :comments, :tip_for_others, :map_tracks, :visibility, :start_air, :end_air)
  end
end
