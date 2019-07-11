# THP Day 09
# https://www.thehackingproject.org/dashboard/courses/1/weeks/1/days/4?locale=fr

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

def average_finish_time
  100.times do
    arr = []
    round = full_game
    arr << round
    gets.chomp
    print arr
    print round
    gets.chomp
  end
  average = arr.inject{ |sum, el| sum + el }.to_f / arr.size
  return average
end

def perform
  average = average_finish_time
  puts "Average number of dice roll to get to the top : #{average}"
end

perform
