class GearSetsController < ApplicationController
  before_action :set_gear_set, only: [:show, :edit, :update, :destroy]

  # GET /gear_sets
  # GET /gear_sets.json
  def index
    @gear_sets = GearSet.all
  end

  # GET /gear_sets/1
  # GET /gear_sets/1.json
  def show
  end

  # GET /gear_sets/new
  def new
    @gear_set = GearSet.new
  end

  # GET /gear_sets/1/edit
  def edit
  end

  # POST /gear_sets
  # POST /gear_sets.json
  def create
    @gear_set = GearSet.new(gear_set_params)

    respond_to do |format|
      if @gear_set.save
        format.html { redirect_to @gear_set, notice: 'Gear set was successfully created.' }
        format.json { render :show, status: :created, location: @gear_set }
      else
        format.html { render :new }
        format.json { render json: @gear_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gear_sets/1
  # PATCH/PUT /gear_sets/1.json
  def update
    respond_to do |format|
      if @gear_set.update(gear_set_params)
        format.html { redirect_to @gear_set, notice: 'Gear set was successfully updated.' }
        format.json { render :show, status: :ok, location: @gear_set }
      else
        format.html { render :edit }
        format.json { render json: @gear_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gear_sets/1
  # DELETE /gear_sets/1.json
  def destroy
    @gear_set.destroy
    respond_to do |format|
      format.html { redirect_to gear_sets_url, notice: 'Gear set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear_set
      @gear_set = GearSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_set_params
      params.require(:gear_set).permit(:user_id, :name)
    end
end
