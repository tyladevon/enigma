require 'date'
require './lib/generator'
require './lib/encrypt'
require './lib/decrypt'

class Enigma
  def encrypt(message, key = Generator.generate_random_number, date = Date.today.strftime('%d%m%y'))
    if key.length == 5
      key = key
    else
      date = key
      key = Generator.generate_random_number
    end
    Encrypt.encrypt(message, key, date)
  end

  def decrypt(message, key, date)
    if key.length == 5
      key = key
    else
      date = key
      key = Generator.generate_random_number
    end
    Decrypt.decrypt(message, key, date)
  end
end
