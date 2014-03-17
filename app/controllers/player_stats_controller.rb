class PlayerStatsController < LoggedInController
  before_action :load_player
  before_action :load_player_stat, only: [:edit, :update, :destroy]

  # GET /player_stats/new
  def new
    @player_stats = @player.player_stats.new
  end

  # GET /player_stats/1/edit
  def edit
  end

  # POST /player_stats
  def create
    @player_stats = @player.player_stats.new(player_stat_params)

    if @player_stats.save
      redirect_to player_path(@player), notice: 'Player stats were successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /player_stats/1
  def update
    if @player_stats.update(player_stat_params)
      redirect_to player_path(@player), notice: 'Player stats were successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /player_stats/1
  def destroy
    @player_stats.destroy
    redirect_to player_path(@player)
  end

  private

  def load_player
    @player = Player.find params[:player_id]
  end

  def load_player_stat
    @player_stats = PlayerStats.find params[:id]
  end

  def player_stat_params
    params.require(:player_stats).permit(
      :year,
      :fgm, :fga, :ftm, :fta, :reb, :ast, :stl, :blk, :to, :pts,
      :fpts_total, :fpts_avg
    )
  end
end
