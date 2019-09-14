require './lib/generator'


class Enigma
  include Generator



def encrypt(message, key = generate_random_number, date = Date.today.strftime(format = '%d%m%y'))
  if key.length == 5
    key = key
  else
    date = key 
    key = generate_random_number
  end


  require 'pry';binding.pry

end

end
