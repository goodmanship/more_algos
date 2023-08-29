require 'prime'

def primes(array)
  array.select{ |i| Prime.prime? i }
end

def fibs(n)
  return [] if n == 0
  return [1] if n == 1
  array = [1,1]
  (n - 2).times do
    array << array[-2] + array[-1]
  end
  array
end

def solution(n)
  primes(fibs(n))
end

puts "#{solution(5)}"