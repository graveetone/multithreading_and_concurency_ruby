require "benchmark"
require_relative "../factorial"

threads = []
puts "100 threads:"
puts Benchmark.measure {
  100.times do |i|
    threads << Thread.new do     
    factorial 10000
    end
  end
  threads.map(&:join)
}
puts "1 thread:"
puts Benchmark.measure {
  100.times do |i|
    factorial 10000
  end
}