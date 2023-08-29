require 'prime'

def fib(n)
  return [0] if n == 0
  return [1] if n == 1
  return [1,1] if n == 2
  f = fib(n-1)
  return [f,f[-2..-1].sum].flatten
end

def solution(n)
  f = fib(n)
  puts "#{f}"
  f.find_all{|i| Prime.prime? i}
end

puts "#{solution(4)}"