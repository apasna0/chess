require "./chess"
require "test/unit"

 class TestRubyWord < Test::Unit::TestCase
   def test_simple
     assert_equal(fruit_numb("TAGCTT"), 3)
   end
 end
