puts 'Hangman initialized.'
p File.exists? "google-10000-english-no-swears.txt"

# Creates a string of the whole file
# contents = File.read('google-10000-english-no-swears.txt')
# p contents.class

# Creates an array of each lines
file_array = File.readlines('google-10000-english-no-swears.txt')

# For checking
def test_file(file)
  p file.class
  p file[0]
  p file[0].chomp
  p file.length
end

# When a new game is started, your script should load in the dictionary 
# and randomly select a word between 5 and 12 characters long for the secret word.

def select_random_word(file)
  word = ''
  loop do
    random_index = Random.rand(file.length)
    word = file[random_index].chomp
    break if word.length >= 5 and word.length <= 12
  end
  word
end

p select_random_word(file_array)

# blank array to hold ( _ _ _ _ ), no space needed
array = []

# pushes _ based on the word's length
#word.length.times do 
  #array.push('_')
#end

p array

# get letter from user
puts "Choose a letter:"
letter = gets.chomp
while letter.length != 1 do
  puts "Error: Choose only one letter:"
  letter = gets.chomp
end



