def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    messages = []
    names.each do |name|
        messages << badge_maker(name) 
    end
    return messages
end

def assign_rooms(names)
   names.each_with_index.map do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
    
end

def printer(names)
    batch_badge_creator(names).each do |badge|
        puts badge
    end
    assign_rooms(names).each do |assignment|
        puts assignment
    end
end