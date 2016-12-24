class FreediveSessionsController < ApplicationController
  before_action :set_freedive_session, only: [:show, :edit, :update, :destroy]

  # GET /freedive_sessions
  # GET /freedive_sessions.json
  def index
    @freedive_sessions = FreediveSession.all
  end

  # GET /freedive_sessions/1
  # GET /freedive_sessions/1.json
  def show
  end

  # GET /freedive_sessions/new
  def new
    @freedive_session = FreediveSession.new
  end

  # GET /freedive_sessions/1/edit
  def edit
  end

  # POST /freedive_sessions
  # POST /freedive_sessions.json
  def create
    @freedive_session = FreediveSession.new(freedive_session_params)

    respond_to do |format|
      if @freedive_session.save
        format.html { redirect_to @freedive_session, notice: 'Freedive session was successfully created.' }
        format.json { render :show, status: :created, location: @freedive_session }
      else
        format.html { render :new }
        format.json { render json: @freedive_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freedive_sessions/1
  # PATCH/PUT /freedive_sessions/1.json
  def update
    respond_to do |format|
      if @freedive_session.update(freedive_session_params)
        format.html { redirect_to @freedive_session, notice: 'Freedive session was successfully updated.' }
        format.json { render :show, status: :ok, location: @freedive_session }
      else
        format.html { render :edit }
        format.json { render json: @freedive_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freedive_sessions/1
  # DELETE /freedive_sessions/1.json
  def destroy
    @freedive_session.destroy
    respond_to do |format|
      format.html { redirect_to freedive_sessions_url, notice: 'Freedive session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freedive_session
      @freedive_session = FreediveSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freedive_session_params
      params.require(:freedive_session).permit(:user_id, :divespot_id, :gear_set_id, :start_at, :end_at, :enjoyment, :comments, :tip_for_others, :map_tracks, :visibility)
    end
end
