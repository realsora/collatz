def collatz(num)
  raise ArgumentError.new 'Argument must be a positive integer' unless num > 0
 count = 0

 while num != 1
  count += 1
  num = num.odd? ? num * 3 + 1 : num / 2
  end
return count

end
p collatz(12)