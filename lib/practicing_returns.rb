require 'pry'

def hello(array)
  i = 0
  results_array = []
  
  while i < array.length
    results_array.push(yield(array[i]))
    i += 1
  end
  
  results_array
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
