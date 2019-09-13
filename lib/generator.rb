class Generator

  def initialize
    # @date = date
    # @number = generate
  end

  def generate
    random_number = rand(0..99999).to_s
    random_number = random_number.rjust(5, "0")
    random_number
  end

end
