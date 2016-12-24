class DivespotsController < ApplicationController
  before_action :set_divespot, only: [:show, :edit, :update, :destroy]

  # GET /divespots
  # GET /divespots.json
  def index
    @divespots = Divespot.all
  end

  # GET /divespots/1
  # GET /divespots/1.json
  def show
  end

  # GET /divespots/new
  def new
    @divespot = Divespot.new
  end

  # GET /divespots/1/edit
  def edit
  end

  # POST /divespots
  # POST /divespots.json
  def create
    @divespot = Divespot.new(divespot_params)

    respond_to do |format|
      if @divespot.save
        format.html { redirect_to @divespot, notice: 'Divespot was successfully created.' }
        format.json { render :show, status: :created, location: @divespot }
      else
        format.html { render :new }
        format.json { render json: @divespot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divespots/1
  # PATCH/PUT /divespots/1.json
  def update
    respond_to do |format|
      if @divespot.update(divespot_params)
        format.html { redirect_to @divespot, notice: 'Divespot was successfully updated.' }
        format.json { render :show, status: :ok, location: @divespot }
      else
        format.html { render :edit }
        format.json { render json: @divespot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divespots/1
  # DELETE /divespots/1.json
  def destroy
    @divespot.destroy
    respond_to do |format|
      format.html { redirect_to divespots_url, notice: 'Divespot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divespot
      @divespot = Divespot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divespot_params
      params.fetch(:divespot, {})
    end
end
