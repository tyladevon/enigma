require './test_helper'
require 'date'
require './lib/generator'

class GeneratorTest < Minitest::Test

  def test_it_generates_random_number
    assert (Generator.generate_random_number.to_i >= 0 && Generator.generate_random_number.to_i <= 99999)
    assert (Generator.generate_random_number.length == 5)
  end

  def test_it_generates_date_today
    assert Generator.generate_date
  end

end
