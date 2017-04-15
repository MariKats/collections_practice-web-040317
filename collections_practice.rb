require 'Pry'

def sort_array_asc(integers)
  integers.sort
end

def sort_array_desc(integers)
  integers.sort {|a, b| b<=>a}
end

def sort_array_char_count(array)
  array.sort_by {|char| char.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array, index, destination_index)
  array["#{index}"] = array["#{destination_index}"]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  kesha_array << array.each {|word| word[2] = "$"}
  kesha_array[0]
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
   array.each_with_index.collect do |word, index|
    if array[1] != word
      "#{word}s"
    else word
    end
  end
end
