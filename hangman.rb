puts 'Hangman initialized.'

p File.exists? "google-10000-english-no-swears.txt"
contents = File.read('google-10000-english-no-swears.txt')
#puts contents