


def select_cards(available_cards, hand,count) #count included as arguement to prevent loop from accepting mroe than 3 cards in hand

  available_cards.each do |current_card|
   if count < 3
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      count += 1
      hand << current_card
    else answer.downcase == 'n'

    end
  end
  end

  if count < 3
    select_cards(available_cards, hand,count)
  end
    return hand

end


available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [],0)

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
