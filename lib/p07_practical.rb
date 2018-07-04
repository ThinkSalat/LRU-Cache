require_relative 'p05_hash_map'

def can_string_be_palindrome?(string) 
  hashmap = HashMap.new
  string.chars.each do |char| 
    hashmap[char] = hashmap[char] || 0
    hashmap[char] += 1
  end
  numOdds = 0
  hashmap.each do |k,v|
    numOdds += 1 if v.odd?
  end
  return numOdds <= 1
end
