require 'csv'

CSV.foreach('db/sheet.csv') do |row|
  Senator.create(first: row[1].chomp, last: row[2].chomp, party: row[3].chomp, state: row[0].chomp, cid: row[4].chomp)
end
