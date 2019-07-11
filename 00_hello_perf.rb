def say_hello
  print "Hello"
end

def ask_first_name
  first_name = gets.chomp
  return first_name
end

def perform
  print "C'est quoi ton blase? : "
  first_name = ask_first_name
  say_hello
  puts " " + first_name
  end

perform
