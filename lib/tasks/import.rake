namespace :import do

  desc "Import users from spreadsheet KEY="
  task :users => :environment do
    importer = Importer.new ENV['KEY']
    importer.import_users
  end

  desc "Import player stats from spreadsheet KEY= for year YEAR="
  task :stats => :environment do
    importer = Importer.new ENV['KEY']
    importer.import_player_stats ENV['YEAR']
  end
end
