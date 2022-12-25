puts 'Hangman initialized.'

# Creates a string of the whole file
contents = File.read('google-10000-english-no-swears.txt')

# Creates an array of each lines
lines = File.readlines('google-10000-english-no-swears.txt')

# For checking
p File.exists? "google-10000-english-no-swears.txt"
p contents.class
p lines.class
p lines[0]
p lines[0].chomp
p lines.length

# When a new game is started, your script should load in the dictionary 
# and randomly select a word between 5 and 12 characters long for the secret word.
#prng = Random.new
word = ''
prng = Random.rand(lines.length)

loop do
  prng = Random.rand(lines.length)
  word = lines[prng].chomp
  break if word.length >= 5 and word.length <= 12
end

p word

# blank array to hold ( _ _ _ _ ), no space needed
array = []