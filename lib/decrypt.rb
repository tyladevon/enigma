require './lib/generator'
require './lib/shift'

class Decrypt

  def self.decrypt(message, key, date)
    shift_hash = Shift.shift_message(key,date)
    library = ("a".."z").to_a << " "

    decrypted_message = message.downcase.chars.map.with_index do |letter, index|
      shift = library.find_index(letter) - shift_hash.values[index % shift_hash.length]
      library[shift % library.length]
    end.join

    {decryption: decrypted_message,
     key:        key,
     date:       date
    }
  end
end
