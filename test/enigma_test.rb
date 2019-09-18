require './test_helper'
require './lib/enigma'
require 'date'


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


  # def test_encrypt_without_key
  #   # expected = {encryption: "adfadsf adsf", key: "54387", date: "091519"}
  #   # @enigma.expects(:encrypt).returns(expected)
  #
  #   assert_equal 2, @enigma.encrypt("random text", "543872")
  # end

  # def test_decrypt_without_key
  #   expected = {decryption: "adfadsf adsf", key: "54387", date: "091519"}
  #   @enigma.expects(:decrypt).returns(expected)
  #
  #   assert_equal expected, @enigma.decrypt("random text", "543872")
  # end

end
