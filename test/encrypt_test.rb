require './test_helper'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_encrypt
    expected = ({encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
      })

    assert_equal expected, Encrypt.encrypt("hello world", "02715", "040895")

  end

end
