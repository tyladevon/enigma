class Generator

  def self.generate_random_number
    random_number = rand(0..99999).to_s
    random_number.rjust(5, "0")
  end

end
