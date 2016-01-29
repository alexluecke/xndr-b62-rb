require_relative '../lib/hasher.rb'
require 'test/unit'

class TestHasher < Test::Unit::TestCase

  def test_mappers
    assert_equal('a', Hasher::map(0))
    assert_equal('b', Hasher::map(1))
    assert_equal('0', Hasher::map(52))
    assert_equal('A', Hasher::map(26))
    assert_equal('B', Hasher::map(27))

    assert_equal(0, Hasher::unmap('a'))
    assert_equal(1, Hasher::unmap('b'))
    assert_equal(52, Hasher::unmap('0'))
    assert_equal(26, Hasher::unmap('A'))
    assert_equal(27, Hasher::unmap('B'))
  end

  def test_hash
    assert_equal('9b', Hasher::hash(123))
    assert_equal(123, Hasher::unhash('9b'))
  end

end
