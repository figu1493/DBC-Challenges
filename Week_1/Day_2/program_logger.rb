def log(message)
  puts "#{message}..."
  from_block = yield
  puts "  ...#{from_block}"
end
 
log("Gavin is cool!") {5}
 
log("calling outer block") do
 
  log("calling inner block") { "Inside block party!" }
 
  "Outside block party!"
end