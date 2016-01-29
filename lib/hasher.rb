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

    return map(0) if num == 0

    str = ''
    while num > 0 do
      str += self.map(num % BASE)
      num = num / BASE
    end
    return str
  end
end
