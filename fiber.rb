fiber = Fiber.new do
    puts 1
    Fiber.yield
    puts 2
  end
  
  puts fiber.resume
  puts fiber.resume
#   puts fiber.resume