def fibs(n)
  a, b = 0,1
  fib_nums = [0,1]
  if n <= 2 
    return fib_nums[0...n]
  else
    (n-2).times do 
      a, b = b, a+b
      fib_nums << b
    end
  end
  fib_nums
end

def fibs_rec(n)
 return [0, 1][0...n] if n <= 2
 prev = fibs(n-1)
 prev.append(prev[-1]+prev[-2])
end

# One-liner: (copied from Jsalvadorpp)
# def fibs_rec(n,array = [0,1])
#     return (n == 0 || n == 1) ? array[0..n] : array.push(fibs_rec(n-1,array)[n-1]+array[n-2])
# end


p fibs(9)
p fibs_rec(9)
