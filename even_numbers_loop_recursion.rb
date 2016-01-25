require "benchmark"

# The Benchmark analysis yielded better result for the recursion and was found to be faster than the loop methods used to get even numbers 1000 times for numbers 0 to 30

def get_loop_even(num)
  (0..num).each { |x| x if (x%2==0)}
end

def get_recursion_even(n)
    if n == 0
      1
    elsif ((n%2==0) && (n>1))
      get_recursion_even(n-2)
    elsif ((n%2!=0) && (n>1))
      get_recursion_even(n-1)
    end
    #puts n
end

Benchmark.bm do |x|
  x.report do
    1000.times { get_loop_even(30)}
  end
end

Benchmark.bm do |x|
  x.report do
    1000.times { get_recursion_even(30)}
  end
end
