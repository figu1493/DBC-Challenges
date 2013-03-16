# A message is a string that may or may not contain a ":"
# If the original message contains a ":" then all content after (but not including) the ":" is removed when the message self-destructs. So if the original message is "This message will self destruct: Ruby is fun" then the destructed message is "This message will self destruct:".
# If the original message does not contain a ":" then it will not change in when it is destructed.

def destroy_message(string)
  array = string.partition(":")
	final = array[0] + array[1]
end

def destroy_message!(string)
  if string.include?(":")
  array = string.partition(":")
	final = array[0] + array[1]
  string.replace(final)
  else
  	nil
  end
end

puts destroy_message("Agent7, here are the coordinates to the secret bunker: GPS 12.3456, -98.7654")
puts destroy_message("Agent7, here are the coordinates to the secret bunker - GPS 12.3456, -98.7654")

puts destroy_message!("Agent7, here are the coordinates to the secret bunker: GPS 12.3456, -98.7654")