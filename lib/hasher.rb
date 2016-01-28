module Hasher

  @base = 72

  def self.mapper num
    case
      when num >= 0 && num < 26    # a-z -> 0-25
        return (num + 97).chr
      when num >= 26 && num < 62   # A-Z -> 26-61
        return (num - 26 + 65).chr
      else                         # 0-9 -> 62-71
        return (num - 62 + 48).chr
    end
  end

  def self.unmapper ch
    num = ch.ord
    case
      when num >= 97 && num < 123  # 0-25 -> a-z
        return num - 97
      when num >= 65 && num < 91   # 26-61 -> A-Z
        return num - 65 + 26
      else                         # 62-71 -> 0-9
        return num - 48 + 62
    end
  end

  def self.unhash str
    sum=0
    str.chars.each_with_index { |ch, idx|
      sum += self.unmapper(ch) * @base**idx
    }
    return sum
  end

  def self.hash num

    return mapper(0) if num == 0

    str = ''
    while num > 0 do
      str += mapper(num % @base)
      num = num / @base
    end
    return str
  end
end
