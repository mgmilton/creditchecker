gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/morsecode'

class MorseCodeTest < Minitest::Test
  def test_instance_of_morse_code
    morse = MorseCode.new
    assert_instance_of morse, MorseCode
  end

  def test_morse_letter_corresponds_to_morsecode
    morse = MorseCode.new
    assert_equal '-...', morsecode['b']
  end

end
