namespace :import do

  def importer
    @importer ||= Importer.new ENV['KEY']
  end

  desc "Import users from spreadsheet KEY="
  task :users => :environment do
    importer.import_users
  end

  desc "Import player stats from spreadsheet KEY= for year YEAR="
  task :stats => :environment do
    importer.import_player_stats ENV['YEAR']
  end

  desc "Create rosters for year YEAR="
  task :rosters => :environment do
    importer.create_rosters_for_year ENV['YEAR']
  end
end
