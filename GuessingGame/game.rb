class GuessingGame
attr_reader :word, :guessed_letters, :guess_count, :guest_count, :guess_limit, :guess_state, :won, :over

  def initialize
    @word = ""
    @guessed_letters = []
    @guess_count = 0
    @guess_limit = 0
    @guess_state = "_ "
    @won         = false
    @over        = false
  end
end