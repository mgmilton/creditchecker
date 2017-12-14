gem 'minitest'
require './lib/translate'
require './lib/morsecode'
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest < Minitest::Test
  def test_initializes_creates_a_string_and_morseclass
    string = Translator.new
    arrest_instance_of string, Translator
    arrset_instance_of string.m, MorseCode
  end

   def test_eng_to_morse
     string = Translator.new("hello world")
     assert_equal "......-...-..--- .-----.-..-..-..", string.eng_to_morse
   end

   def test_morse_to_eng
     string = Translator.new("")

   end
end
