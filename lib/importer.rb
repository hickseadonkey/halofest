class Importer

  PLAYER_COLS = {
    first_name: 2,
    last_name: 3
  }
  
  STATS_COLS = {
    fgm: 6,
    fga: 7,
    ftm: 8,
    fta: 9,
    tpm: 10,
    reb: 11,
    ast: 12,
    stl: 13,
    blk: 14,
    to: 15,
    pts: 16,
    fpts_total: 17,
    fpts_avg: 18
  }

  DRAFT_COLS = {
    year: 1,
    round_number: 2,
    pick_count: 3,
    first_name: 4,
    last_name: 5,
    user_id: 7
  }

  def initialize(ssheet_key)
    @ssheet_key = ssheet_key
  end

  def import_users
    worksheet = spreadsheet.worksheet_by_title('TeamID')
    for rownum in 2..worksheet.num_rows
      name = worksheet[rownum,2]
      email = worksheet[rownum,3]
      User.find_or_create_by name: name, email: email
    end
  end

  def import_player_stats(year)
    worksheet_title = stats_worksheet_title_for_year(year)
    worksheet = spreadsheet.worksheet_by_title worksheet_title
    for rownum in 2..worksheet.num_rows
      first_name = worksheet[rownum, PLAYER_COLS[:first_name]].strip.humanize
      last_name  = worksheet[rownum, PLAYER_COLS[:last_name]].strip.humanize

      player = Player.find_or_create_by(first_name: first_name, last_name: last_name)
      stats = player.player_stats.find_or_create_by(year: year)
      STATS_COLS.each do |name, colnum|
        stats.send "#{name}=", worksheet[rownum, colnum]
      end
      stats.save!
    end
  end

  def create_rosters_for_year(year)
    draft = Draft.find_by_year year
    create_id_to_user_map
    worksheet_title = stats_worksheet_title_for_year year
    worksheet = spreadsheet.worksheet_by_title worksheet_title
    for rownum in 2..worksheet.num_rows
      first_name = worksheet[rownum, PLAYER_COLS[:first_name]].strip.humanize
      last_name  = worksheet[rownum, PLAYER_COLS[:last_name]].strip.humanize
      player = Player.find_by(first_name: first_name, last_name: last_name)
      id_of_user_who_owns_player = worksheet[rownum, 5]
      user = @id_to_user_map[id_of_user_who_owns_player]
      roster = Roster.find_or_create_by(user_id: user.id, draft_id: draft.id)
      roster.players << player unless roster.players.include?(player)
    end
  end



  def create_drafts_for_year(year)
    draft = Draft.find_by_year year
    create_id_to_user_map
    worksheet_title = drafts_worksheet_title_for_year year
    worksheet = spreadsheet.worksheet_by_title worksheet_title
    for rownum in 2..worksheet.num_rows
      first_name = worksheet[rownum, PLAYER_COLS[:first_name]].strip.humanize
      last_name  = worksheet[rownum, PLAYER_COLS[:last_name]].strip.humanize
      player = Player.find_by(first_name: first_name, last_name: last_name)
      id_of_user_who_owns_player = worksheet[rownum, 5]
      user = @id_to_user_map[id_of_user_who_owns_player]
      draft_round = Draft_rounds.find_or_create_by(user_id: user.id, draft_id: draft.id)
      roster.players << player unless roster.players.include?(player)
    end
  end

  private

  def session
    email = ENV['GOOGLEDRIVE_EMAIL']
    password = ENV['GOOGLEDRIVE_PASSWORD']
    @session ||= GoogleDrive.login email, password
  end

  def spreadsheet
    @spreadsheet ||= session.spreadsheet_by_key @ssheet_key
  end

  # Create a hash of :id => User
  def create_id_to_user_map
    worksheet = spreadsheet.worksheet_by_title('TeamID')
    @id_to_user_map = {}
    for rownum in 2..worksheet.num_rows
      id = worksheet[rownum,1]
      name = worksheet[rownum,2]
      email = worksheet[rownum,3]
      user = User.find_by_email email
      @id_to_user_map[id] = user
    end
  end

  def stats_worksheet_title_for_year(year)
    "#{year} Player Stats"
  end

  def drafts_worksheet_title_for_year(year)
    "#{year} Draft"
  end
end
