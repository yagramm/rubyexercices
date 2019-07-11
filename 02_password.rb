# THP Day 09
# https://www.thehackingproject.org/dashboard/courses/1/weeks/1/days/4?locale=fr

def signup
  pwd = ""
  while (pwd == "")
    print "Define your password : "
    pwd = gets.chomp
  end
  return pwd
end

def login(pwd)
  log = ""
  while (log != pwd)
    require 'io/console' #needed to hide password entry
    print "Password ? (entry hidden for security reason) : "
    log = STDIN.noecho(&:gets).chomp #ask for password witout showing entry
puts "\n"
  end

return log
end

def welcome_screen
  puts "\a"
  puts "Welcome to the THP world !!!"
  puts "  ____  _   _  ____"
  puts " (_  _)( )_( )(   _)"
  puts "   )(    ) (   )("
  puts "  (__) ( )_( )(__)"
  puts "\a"
end

def perform
  pwd = signup
  login (pwd)
  welcome_screen
  end

perform
