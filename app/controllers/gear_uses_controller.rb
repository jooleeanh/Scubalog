class GearUsesController < ApplicationController
  before_action :set_gear_use, only: [:show, :edit, :update, :destroy]

  # GET /gear_uses
  # GET /gear_uses.json
  def index
    @gear_uses = GearUse.all
  end

  # GET /gear_uses/1
  # GET /gear_uses/1.json
  def show
  end

  # GET /gear_uses/new
  def new
    @gear_use = GearUse.new
  end

  # GET /gear_uses/1/edit
  def edit
  end

  # POST /gear_uses
  # POST /gear_uses.json
  def create
    @gear_use = GearUse.new(gear_use_params)

    respond_to do |format|
      if @gear_use.save
        format.html { redirect_to @gear_use, notice: 'Gear use was successfully created.' }
        format.json { render :show, status: :created, location: @gear_use }
      else
        format.html { render :new }
        format.json { render json: @gear_use.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gear_uses/1
  # PATCH/PUT /gear_uses/1.json
  def update
    respond_to do |format|
      if @gear_use.update(gear_use_params)
        format.html { redirect_to @gear_use, notice: 'Gear use was successfully updated.' }
        format.json { render :show, status: :ok, location: @gear_use }
      else
        format.html { render :edit }
        format.json { render json: @gear_use.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gear_uses/1
  # DELETE /gear_uses/1.json
  def destroy
    @gear_use.destroy
    respond_to do |format|
      format.html { redirect_to gear_uses_url, notice: 'Gear use was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear_use
      @gear_use = GearUse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_use_params
      params.require(:gear_use).permit(:gear_set_id, :gear_id)
    end
end
