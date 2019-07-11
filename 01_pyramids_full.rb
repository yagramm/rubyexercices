def full_pyramid(store)
  step = 1
  store.times do
    (store-1).times do
      print " "
    end
    step.times do
      print "#"
    end
    step += 2
    store -= 1
  puts
  end
end

store = 0
while (store == 0) || (store > 25)
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (entre 1 et 25)?"
print "> "
store = gets.chomp.to_i
end

full_pyramid(store)
