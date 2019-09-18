require './lib/enigma'
require './lib/shift'
input_file_name = ARGV.first
input_file = File.open(input_file_name, "r")

@enigma = Enigma.new

message = input_file.read.chomp
output = @enigma.encrypt(message)
output_date = Shift.shift_message(output[:key], output[:date])
output_file_name = ARGV.last

encrypted_message = output[:encryption]
output_file = File.open(output_file_name, "w")
output_file.write(encrypted_message)

puts "Created #{output_file_name} with the key #{output[:key]} and date #{output[:date]}"
