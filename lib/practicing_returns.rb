require 'pry'

def hello(array)
  collection = [ ]
  i = 0
  while i < array.length do
   collection << yield(array[i])
   
    i += 1
  end

  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
