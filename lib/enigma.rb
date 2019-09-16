require './lib/generator'


class Enigma

  def encrypt(message, key = Generator.generate_random_number, date = Date.today.strftime('%d%m%y'))
    if key.length == 5
      key = key
    else
      date = key
      key = generate_random_number
    end

    key_hash = Hash.new(0)
    key_hash["A"] = key.slice(0,2).to_i
    key_hash["B"] = key.slice(1,2).to_i
    key_hash["C"] = key.slice(2,2).to_i
    key_hash["D"] = key.slice(3,2).to_i

    date_hash = Hash.new(0)
    new_date = date.to_i * date.to_i
    date_hash["A"] = new_date.digits[3]
    date_hash["B"] = new_date.digits[2]
    date_hash["C"] = new_date.digits[1]
    date_hash["D"] = new_date.digits[0]

    shift_hash = key_hash.merge(date_hash){|letter, random_num, date_num| random_num + date_num}

    library = ("a".."z").to_a << " "

      encrypted_message = message.chars.map.with_index do |letter, index|
        shift = library.find_index(letter) + shift_hash.values[index % shift_hash.length]
        library[shift % library.length]
        # require 'pry';binding.pry
      end.join
      {encryption: encrypted_message,
       key:        key,
       date:       date
      }
  end
end
