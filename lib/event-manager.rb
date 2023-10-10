require 'csv'

def clean_zipcode(zipcode)
    if zipcode.nil?
        zipcode = '00000'
    elsif zipcode.length < 5
        len = 5 - zipcode.length
        zipcode = zipcode.prepend("0" * len)
    elsif zipcode.length > 5
        zipcode = zipcode.slice(0..4)
    else
        zipcode
    end
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
