thr = Thread.new {
  puts "Some code here"
}

Thread.kill(thr) # or thr.terminate(thr)