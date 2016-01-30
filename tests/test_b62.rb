require_relative '../lib/xndr-b62.rb'
require 'test/unit'

class TestB62 < Test::Unit::TestCase

  def test_mappers
    assert_equal('a', XndrB62::map(0))
    assert_equal('b', XndrB62::map(1))
    assert_equal('0', XndrB62::map(52))
    assert_equal('A', XndrB62::map(26))
    assert_equal('B', XndrB62::map(27))

    assert_equal(0, XndrB62::unmap('a'))
    assert_equal(1, XndrB62::unmap('b'))
    assert_equal(52, XndrB62::unmap('0'))
    assert_equal(26, XndrB62::unmap('A'))
    assert_equal(27, XndrB62::unmap('B'))
  end

  def test_encoding
    assert_equal('Vmb', XndrB62::encode(4635))
    assert_equal(4635, XndrB62::decode('Vmb'))
    assert_equal('9b', XndrB62::encode(123))
    assert_equal(123, XndrB62::decode('9b'))
  end

end
