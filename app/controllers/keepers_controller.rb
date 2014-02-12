class KeepersController < ApplicationController
  before_action :set_keeper, only: [:show, :edit, :update, :destroy]

  # GET /keepers
  # GET /keepers.json
  def index
    @keepers = Keeper.all
  end

  # GET /keepers/1
  # GET /keepers/1.json
  def show
  end

  # GET /keepers/new
  def new
    @keeper = Keeper.new
  end

  # GET /keepers/1/edit
  def edit
  end

  # POST /keepers
  # POST /keepers.json
  def create
    @keeper = Keeper.new(keeper_params)

    respond_to do |format|
      if @keeper.save
        format.html { redirect_to @keeper, notice: 'Keeper was successfully created.' }
        format.json { render action: 'show', status: :created, location: @keeper }
      else
        format.html { render action: 'new' }
        format.json { render json: @keeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keepers/1
  # PATCH/PUT /keepers/1.json
  def update
    respond_to do |format|
      if @keeper.update(keeper_params)
        format.html { redirect_to @keeper, notice: 'Keeper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @keeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keepers/1
  # DELETE /keepers/1.json
  def destroy
    @keeper.destroy
    respond_to do |format|
      format.html { redirect_to keepers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keeper
      @keeper = Keeper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keeper_params
      params[:keeper]
    end
end
