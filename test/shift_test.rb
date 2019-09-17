require './test_helper'
require './lib/shift'
require './lib/generator'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_shift_message
    assert @shift.shift_message
  end
  # assert (@generator.generate.to_i >= 0 && @generator.generate.to_i <= 99999)
  # assert (@generator.generate.length == 5)


end
