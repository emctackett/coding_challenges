def odd_words(input_text)
  return input_text if input_text.empty?

  words = input_text.delete('.').strip.split(' ')
  reversed_odds = words.map do |wrd|
    words.index(wrd).odd? ? wrd.reverse : wrd
  end

  if input_text.strip[-1] == '.'
    reversed_odds.join(' ') + '.'
  else
    reversed_odds.join(' ')
  end
end

# test cases
p odd_words('whats the matter with kansas.')
p odd_words('hello') #=> 'hello'
p odd_words('hello word.') #=> 'hello drow.'
p odd_words('hello word .') #=> 'hello drow.'
p odd_words('hello  word .') #=> 'hello drow.'
p odd_words('hello word  .') #=> 'hello drow.'
p odd_words('hello word world .') #=> 'hello drow world.'

p odd_words('') #=> ''
p odd_words('.') #=> '.'
p odd_words(' hello . ')
