
puts 'Event Manager Initialised!'


lines = File.readlines("event_attendees.csv")

=begin
lines.each do |line|
    columns = line.split(",")
    hash = {"ID"=>columns[0],
        "Reg Date"=>columns[1],
        "First Mame"=>columns[2],
        "Last Name"=>columns[3],
        "Email Address"=>columns[4],
        "Home Phone"=>columns[5],
        "Street"=>columns[6],
        "City"=>columns[7],
        "State"=>columns[8],
        "Zipcode"=>columns[9]}
    puts hash
end
=end

#lines.each {|line| puts line}


lines.each_with_index do |line,index|
    next if index == 0
    columns = line.split(",")
    name=columns[2]
    puts name
end


