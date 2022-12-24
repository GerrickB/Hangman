puts 'Hangman initialized.'

p File.exists? "google-10000-english-no-swears.txt"
#contents = File.read('google-10000-english-no-swears.txt')
#puts contents

lines = File.readlines('google-10000-english-no-swears.txt')
lines.each do |line|
  puts line
end