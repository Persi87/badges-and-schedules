def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    speakers.map do |speaker_name|
          badge_maker(speaker_name)
    end
end 
   
# def batch_badge_creator(speakers)
#    badge_message = []
#     speakers.each do |speaker_name|
#          badge_message << "Hello, my name is #{speaker_name}."
#     end
#     #badge_message
# end

def assign_rooms(speakers)
   room_assignment = []
    speakers.each_with_index do |name, room|
    room_assignment << "Hello, #{name}! You'll be assigned to room #{room + 1}!"
    end
   room_assignment
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badges| 
        puts badges
    end
    assign_rooms(attendees).each do |rooms| 
        puts rooms
    end
end