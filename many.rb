require_relative "factorial"

n = 10_000
threads = []

n.times do
    threads << Thread.new { factorial(5) } # may throw an ThreadError exception or just hang
end

threads.map(&:join)
