require_relative 'hasher.rb'
require 'test/unit'

class TestHasher < Test::Unit::TestCase

  def test_mappers
    assert_equal('a', Hasher::mapper(0))
    assert_equal('b', Hasher::mapper(1))
    assert_equal('0', Hasher::mapper(62))
    assert_equal('A', Hasher::mapper(26))
    assert_equal('B', Hasher::mapper(27))

    assert_equal(0, Hasher::unmapper('a'))
    assert_equal(1, Hasher::unmapper('b'))
    assert_equal(62, Hasher::unmapper('0'))
    assert_equal(26, Hasher::unmapper('A'))
    assert_equal(27, Hasher::unmapper('B'))
  end

  def test_hash
    assert_equal('Zb', Hasher::hash(123))
    assert_equal(123, Hasher::unhash('Zb'))
  end

end
