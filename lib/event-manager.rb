require 'csv'
puts 'Event Manager Initialised!'


lines = File.readlines("event_attendees.csv")

contents = CSV.open('event_attendees.csv', headers: true, header_converters: :symbol)

contents.each do |row|
    name = row[:first_name]
    zipcode = row[:zipcode].to_s.dup
    if zipcode.length < 5
        len = 5 - zipcode.length
        zipcode = zipcode.prepend("0" * len)
    elsif zipcode.length > 5
        zipcode = zipcode.slice(0,5)
    end
    puts ("#{name} #{zipcode}")
end
