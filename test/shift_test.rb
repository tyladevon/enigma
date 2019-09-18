require './test_helper'
require 'mocha/minitest'
require './lib/shift'
require './lib/generator'

class ShiftTest < Minitest::Test

  def test_shift_message
    key = "01234"
    date = "160919"

    assert_equal ({"A"=>5, "B"=>17, "C"=>29, "D"=>35}), Shift.shift_message(key, date)
  end

end
