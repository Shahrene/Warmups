

  loop do
    print ('Chat to Daniel: ')
    chat = gets.chomp

    if chat == ' '
      print ('Fine, be that way')
    break
  elsif chat.include ('?')
      print ('Sure.')
    elsif chat
      print ('Whatever.')
    elsif chat == upcase
      print ('Woah, chill out!')
    end
  end
