class DraftRoundsController < ApplicationController
  before_action :set_draft_round, only: [:show, :edit, :update, :destroy]

  # GET /draft_rounds
  # GET /draft_rounds.json
  def index
    @draft_rounds = DraftRound.all
  end

  # GET /draft_rounds/1
  # GET /draft_rounds/1.json
  def show
  end

  # GET /draft_rounds/new
  def new
    @draft_round = DraftRound.new
  end

  # GET /draft_rounds/1/edit
  def edit
  end

  # POST /draft_rounds
  # POST /draft_rounds.json
  def create
    @draft_round = DraftRound.new(draft_round_params)

    respond_to do |format|
      if @draft_round.save
        format.html { redirect_to @draft_round, notice: 'Draft round was successfully created.' }
        format.json { render action: 'show', status: :created, location: @draft_round }
      else
        format.html { render action: 'new' }
        format.json { render json: @draft_round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_rounds/1
  # PATCH/PUT /draft_rounds/1.json
  def update
    respond_to do |format|
      if @draft_round.update(draft_round_params)
        format.html { redirect_to @draft_round, notice: 'Draft round was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @draft_round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_rounds/1
  # DELETE /draft_rounds/1.json
  def destroy
    @draft_round.destroy
    respond_to do |format|
      format.html { redirect_to draft_rounds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_round
      @draft_round = DraftRound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_round_params
      params.require(:draft_round).permit(:round_number, :draft_id, :pick_count)
    end
end
