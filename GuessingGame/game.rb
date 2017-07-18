class GuessingGame
attr_reader :word, :guessed_letters, :guess_count, :guest_count, :guess_limit, :guess_state, :won, :over

  def initialize
    @word = []
    @guessed_letters = []
    @guess_count = 0
    @guess_limit = 0
    @guess_state = "_"
    @won         = false
    @over        = false
  end

  def get_word(word)
    @word = word.split("")
    @guess_limit = @word.length - 1
    @guess_state = "_" * word.length
  end

  def check_letter(letter)
    if !@guessed_letters.include?(letter)
     p @guessed_letters.push(letter)
      @guess_count += 1
    end

    if @guess_limit == @guess_count
      @over = true
    end

    if (@guessed_letters & @word) == @word
      @won = true
    end
  end
end

puts "Player one, please enter your word."
  game = GuessingGame.new
  word = gets.chomp
  game.get_word(word)

 while !game.over
   puts "Player 2, please guess a letter."
   letter = gets.chomp
   game.check_letter(letter)
 #  puts @guessed_letters
 end

if game.over && game.won
   puts "you won!" + "#{@word}"
else game.over
    puts "sorry you lost
end