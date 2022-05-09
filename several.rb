threads = []
10.times do |i|
  threads << Thread.new { puts  "Thread #{i}" }
end
threads.each(&:join)