def solution(numbers)
    t = numbers.tally
    m = t.values.min
    # find_all returns a (key, value) tuple
    t.find_all{|k,v| v == m}.map{|a| a[0]}
end

puts "#{solution([1,1,2,3])}"