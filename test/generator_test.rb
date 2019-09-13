require './test_helper'
require './lib/generator'

class GeneratorTest < Minitest::Test

  def setup
    @generator = Generator.new
  end

  def test_it_exists
    assert_instance_of Generator, @generator
  end

end
