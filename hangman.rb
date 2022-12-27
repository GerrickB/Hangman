puts 'Hangman initialized.'
p File.exists? "google-10000-english-no-swears.txt"

# Creates a string of the whole file
# contents = File.read('google-10000-english-no-swears.txt')
# p contents.class

# Creates an array of each lines
lines = File.readlines('google-10000-english-no-swears.txt')

# For checking
def test_file(file)
  p file.class
  p file[0]
  p file[0].chomp
  p file.length
end

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

# pushes _ based on the word's length
word.length.times do 
  array.push('_')
end

p array

# get letter from user
puts "Choose a letter:"
letter = gets.chomp
while letter.length != 1 do
  puts "Error: Choose only one letter:"
  letter = gets.chomp
end



