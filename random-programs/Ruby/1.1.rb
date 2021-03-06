#Is a year a leap year? Because the actual length of a year is 365.25635 and not a round number, every 4 years instead of 365 days we have 366. This program is designed to determine if an entry year is a lead year or not.

def leapyear_checker()
  puts "Which year am I checking for leap year status? "
  checking = gets.to_i
  if checking < 0
    puts "Ah! Checking into the BC era are we? Let me see..."
  end
  if (checking % 4 == 0) && (checking % 100 != 0) || (checking % 400 == 0)
    puts checking.to_s.gsub(/-/, "BC ") + " is a leap year. "
    puts (checking + 4).to_s.gsub(/-/, "BC ") + " is the next leap year."
  else
    puts checking.to_s.gsub(/-/, "BC ") + " is not a leapyear. "
    checking2 = checking
    cycle = checking + 3
    until checking2 > cycle
      checking2 += 1
      if (checking2 % 4 == 0) && (checking2 % 100 != 0) || (checking2 % 400 == 0)
        puts "However, " + checking2.to_s.gsub(/-/, "BC ") + " is a leap year. "
      end
    end
  end
end

leapyear_checker()
