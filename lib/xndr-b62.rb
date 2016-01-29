module Hasher

  ALPHABET = [
    'abcdefghijklmnopqrstuvwxyz',
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
    '0123456789'
  ].join('').split(//)

  BASE = ALPHABET.length

  def self.map num
    return ALPHABET[num]
  end

  def self.unmap ch
    return ALPHABET.index(ch)
  end

  def self.unhash str
    sum=0
    str.chars.each_with_index { |ch, idx|
      sum += self.unmap(ch) * BASE**idx
    }
    return sum
  end

  def self.hash num

    return self.map(0) if num == 0

    str = ''
    while num > 0 do
      str += self.map(num % BASE)
      num /= BASE
    end

    # I've seen the reversed string returned here, but since this is an
    # obfuscated string I don't see the purpose. When unhashing I will just
    # walk through from beginning to end (rather than end to beginning) and
    # return the sum.
    return str
  end
end
