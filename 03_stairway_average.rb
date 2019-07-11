# THP Day 09
# https://www.thehackingproject.org/dashboard/courses/1/weeks/1/days/4?locale=fr
=begin
Fais donc une méthode average_finish_time qui va simuler au moins 100 parties, et te retourner le nombre de tours moyen pour arriver à la 10ème marche.
=end

def roll_dice
  rand = rand(1..6)
  return rand
end

def where(step)
  puts "You are now standing on step #{step}"
  end

def moved(step, rand)
  if (rand == 5) || (rand == 6)
    step += 1
    puts "Great! You move up one step!"
    where(step)
  end
  if (rand == 1) && (step == 0)
    puts "Sorry, you stay at the bottom of the stairway."
    where(step)
  end
  if (rand == 1) && (step > 0)
    step -=1
    puts "Sorry, you move down one step."
    where(step)
  end
  if (rand == 2) || (rand == 3) || (rand == 4)
    puts "You stay where you are."
    where(step)
  end
  puts ""
  return step
end

def full_game
  round=1
  step = 0
  where(step)
  puts ""
  while step != 10
    puts "--- Dice roll n° #{round}"
    rand = roll_dice
    puts "The dice gives you a #{rand}"
    step = moved(step, rand)
    round += 1
  end
  return round-1
end

def hundred_games
end

def average_finish_time (games)
  arr = Array.new
  games.times do
    round = full_game
    arr << round
  end
  average = arr.inject{ |sum, el| sum + el }.to_f / arr.size
  puts "Dice rolls full array : #{arr}" #optionnal, used to check result
  return average
end

def perform
  #ARGV[n] is an array with string values from the script command line
  if ARGV[0].to_i > 0 #ARGV[0] is the first value from the script command line
    games = ARGV[0].to_i #Command line value is used to set the number of games played
  else games = 100 #When there is no command line, 100 games are player
  end
  average = average_finish_time(games)
  puts "Total number of games played  : #{games}"
  puts "Average number of dice rolls  : #{average}"

end

perform
