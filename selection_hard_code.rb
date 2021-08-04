alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do 
  current_char = alphabet[counter]
  counter += 1
  
  if current_char == 'g'
    selected_chars << current_char
  end

  break if counter == alphabet.size
end

p selected_chars