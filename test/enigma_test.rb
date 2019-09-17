require './test_helper'
require 'date'
require './lib/enigma'


class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt
    expected = ({encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
      })

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")

  end

  def test_decrypt
    expected = ({
                decryption: "hello world",
                key: "02715",
                date: "040895"
  })
  assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end
end
