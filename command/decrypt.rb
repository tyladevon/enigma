require './lib/enigma'

input_file_name = ARGV.first
input_file = File.open(input_file_name, "r")

@enigma = Enigma.new

message = input_file.read.chomp
key = ARGV[2]
date = ARGV[3]
output = @enigma.decrypt(message, key, date)
output_file_name = ARGV[1]

decrypted_message = output[:decryption]
output_file = File.open(output_file_name, "w")
output_file.write(decrypted_message)


puts "Created #{output_file_name} with the key #{output[:key]} and date #{output[:date]}"
