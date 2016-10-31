# Write your code here.
def badge_maker(name)
  phrase = "Hello, my name is #{name}."
  puts phrase
  phrase
end

def batch_badge_creator(attendees)
	list = Array.new

  for name in attendees
    list.push(badge_maker(name))
  end

  list
end

def assign_rooms(attendees)
  list = Array.new

  attendees.each_with_index{ |name, index|
    phrase = "Hello, #{name}! You'll be assigned to room #{index+1}!"
    list.push(phrase)
    puts phrase
  }

  list
end

def printer(attendees)
  batch_badge_creator(attendees)
  assign_rooms(attendees)
end
