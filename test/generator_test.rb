require './test_helper'
require './lib/generator'

class GeneratorTest < Minitest::Test

  def setup
    @generator = Generator.new
  end

  def test_it_exists
    assert_instance_of Generator, @generator
  end

  def test_it_generates_random_number
    assert (@generator.generate_random_number.to_i >= 0 && @generator.generate_random_number.to_i <= 99999)
    assert (@generator.generate_random_number.length == 5)
  end

end
