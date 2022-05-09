require_relative "factorial"
require "benchmark"

POOL_SIZE = 10

jobs = Queue.new
puts Benchmark.measure {
10_0000.times{|i| jobs.push i}

workers = (POOL_SIZE).times.map do
  Thread.new do
    begin      
      while x = jobs.pop(true)
       factorial(5)      
      end
    rescue ThreadError
    end
  end
end

workers.map(&:join)
}