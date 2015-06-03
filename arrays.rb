#!/usr/bin/ruby

# Exercise 1

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |num|
  if num == number
    puts "Your number, #{num}, is included in the array."
  end
end

if arr.include?(number)
  puts "Yep, #{number} is in the array."
end



# Exercise 2

arr = ["b", "a"]
# => ["b", "a"]
arr = arr.product(Array(1..3))
# => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last)
# => [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
# => ["b", "a"]
arr = arr.product([Array(1..3)])
# => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last)
# => [["b"], ["a", [1, 2, 3]]]



# Exercise 3

arr = [["test", "hello", "world"], ["example", "mem"]]

p arr.last.first
p arr[1].first
p arr[1][0]
p arr.last[0]



# Exercise 4

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
# => 3

arr.index[5]
# NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
#        from (irb):3
#        from /usr/bin/irb:12:in `<main>'

arr[5]
# => 8



# Exercise 5

string = "Welcome to Tealeaf Academy!"

a = string[6]
# => e
b = string[11]
# => T
c = string[19]
# => A



# Exercise 6

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# names['margaret'] is looking for the index integer, but is seeing a string.

names[3] = 'jody'



# Exercise 7

arr = [1, 2, 3, 4, 5]
arr_two = []

arr.each { |n| arr_two << n + 2 }

p arr
p arr_two