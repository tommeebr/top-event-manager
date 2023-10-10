require 'csv'

def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5, '0')[0..4]
end

puts 'Event Manager Initialised!'


lines = File.readlines("event_attendees.csv")

contents = CSV.open('event_attendees.csv', headers: true, header_converters: :symbol)



contents.each do |row|
    name = row[:first_name]
    zipcode = row[:zipcode]
    zipcode = clean_zipcode(zipcode)
    puts ("#{name} #{zipcode}")
end
