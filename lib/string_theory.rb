require 'pry'
class Test
  def sort_by_appearance(characters_to_sort, long_text)
    count_hash = Hash.new
    characters_to_sort.each_char do |char|
      char_count = long_text.count(char)
      count_hash[char] = char_count
    end
    sorted_count = count_hash.values.sort!
    puts count_hash.keys.reverse.join
  end
end

test = Test.new
test.sort_by_appearance("$&*", "Lo**remips&umdolo*sesdf*rsita$$met")