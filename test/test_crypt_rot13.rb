###############################################################
# test_crypt_rot13.rb
#
# Test suite for the crypt-rot13 library. You should run this
# test case via the 'rake test' task.
###############################################################
require 'crypt/rot13'
require 'test/unit'
include Crypt

class TC_Rot13 < Test::Unit::TestCase
   def setup
      @r1 = Rot13.new('abc')
      @r2 = Rot13.new('ABC')
      @r3 = Rot13.new('xyz')
      @r4 = Rot13.new('XYZ')
      @r5 = Rot13.new('a1b2c3@#$')
      @r6 = Rot13.new('abc', 3)
      @r7 = Rot13.new('ABC', 3)
      @r8 = Rot13.new('xyz', 23)
      @r9 = Rot13.new('XYZ', 23)
   end

   def test_version
      assert_equal('1.0.4', Rot13::VERSION)
   end

   def test_constructor
      assert_respond_to(Rot13,:new)
      assert_nothing_raised{ Rot13.new }
      assert_nothing_raised{ Rot13.new('foo') }
      assert_nothing_raised{ Rot13.new('foo', 7) }
   end

   def test_available_methods
      assert_respond_to(@r1, :rotate)
   end

   def test_degree
      assert_raises(Rot13::Error){ Rot13.new('foo', 26) }
      assert_raises(Rot13::Error){ Rot13.new('foo', 52) }
      assert_nothing_raised{ Rot13.new('foo', 25) }
   end

   def test_string_class
      assert_kind_of(String, @r1)
   end

   def test_return_value_default_degree
      assert_equal('nop', @r1)
      assert_equal('NOP', @r2)
      assert_equal('klm', @r3)
      assert_equal('KLM', @r4)
      assert_equal('n1o2p3@#$', @r5)
   end

   def test_return_value_custom_degree
      assert_equal('def', @r6)
      assert_equal('DEF', @r7)
      assert_equal('uvw', @r8)
      assert_equal('UVW', @r9)
   end

   def test_rotate_instance_method
      assert_equal('abc', @r6.rotate(-3))
   end

   def teardown
      @r1 = nil
      @r2 = nil
      @r3 = nil
      @r4 = nil
      @r5 = nil
      @r6 = nil
      @r7 = nil
      @r8 = nil
      @r9 = nil
   end
end
