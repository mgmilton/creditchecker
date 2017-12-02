require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheck < Minitest:Test
  def test_it_exists
    creditcheck = CreditCheck.new
    assert_instance_of CreditCheck, creditcheck
  end

  def test_cards_digits_doubler

    identifer = CreditCheck.new("")
    assert_equal "", identifier.name


end
