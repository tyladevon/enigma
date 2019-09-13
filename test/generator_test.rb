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
    assert (@generator.generate.to_i >= 0 && @generator.generate.to_i <= 99999)
    assert (@generator.generate.length == 5)
  end

end
