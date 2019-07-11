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

def give_score
end

def perform
  step = 0
  where(step)
  puts ""

while step != 10
  puts "-------------------------------"
  puts "! Press enter to roll the dice !"
  puts "-------------------------------"

  gets.chomp

  rand = roll_dice
  puts "The dice gives you a #{rand}"

  step = moved(step, rand)

end
end

perform
