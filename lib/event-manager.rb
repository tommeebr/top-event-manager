require 'csv'
puts 'Event Manager Initialised!'


lines = File.readlines("event_attendees.csv")

contents = CSV.open('event_attendees.csv', headers: true, header_converters: :symbol)

contents.each do |row|
    name = row[:first_name]
    puts name
end
