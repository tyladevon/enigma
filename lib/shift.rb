
class Shift

  def shift_message
    key = Generator.generate_random_number
    key_hash = Hash.new(0)
    key_hash["A"] = key.slice(0,2).to_i
    key_hash["B"] = key.slice(1,2).to_i
    key_hash["C"] = key.slice(2,2).to_i
    key_hash["D"] = key.slice(3,2).to_i

    date = Generator.generate_date
    date_hash = Hash.new(0)
    new_date = date.to_i * date.to_i
    date_hash["A"] = new_date.digits[3]
    date_hash["B"] = new_date.digits[2]
    date_hash["C"] = new_date.digits[1]
    date_hash["D"] = new_date.digits[0]

    shift_hash = key_hash.merge(date_hash){|letter, random_num, date_num| random_num + date_num}
  end
end
