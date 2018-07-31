def capacity(cap)
  capacity_201 = []
  cap[:data][:rooms].each do |x|
    if x[:room_number] == "201"
      capacity_201 << x
    end
  end
  return capacity_201
end

# ////////////////////////////////
def event(array)
  event_201 = []
  array[:events].each do |y|
    if y[:room_id] == 1 && [:attendees] > 50
      puts "ERROR not a big enough room"
    elsif y[:room_id] == 1 && [:attendees] < 50
      event_201 << y
    end
  end
  return event_201
end


david = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}
p capacity(david)
p event(david)
