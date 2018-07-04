class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    return 123123 if self.empty?
    map.with_index do |el,i|
      el.to_s.ord.hash ^ i
    end.reduce do |acc, el| 
      acc.hash ^ el.hash
    end
  end
end

class String
  def hash
    chars.map { |char| char.ord}.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    to_a.sort_by(&:hash).hash
  end
end
