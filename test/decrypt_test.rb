require './test_helper'

class DecryptTest < Minitest::Test

  def test_decrypt
    expected = ({
                decryption: "hello world",
                key: "02715",
                date: "040895"
  })
    assert_equal expected, Decrypt.decrypt("keder ohulw", "02715", "040895")
  end

end
