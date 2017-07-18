require_relative 'game'

describe GuessingGame do
  let(:game) {GuessingGame.new}

  it 'initialize with word, guessed_letters, guess_count, guess_limit, guess_state, won, over' do
    expect(game.word).to eq []
    expect(game.guessed_letters).to eq []
    expect(game.guess_count).to eq 0
    expect(game.guess_limit).to eq 0
    expect(game.guess_state).to eq "_"
    expect(game.won).to eq false
    expect(game.over).to eq false
  end

  it 'accept a word' do
    game.get_word("word")
    expect(game.word).to eq ["w", "o", "r", "d"]
  end

  it 'checks letter' do
    game.get_word("word")
    game.check_letter("w")
    expect(game.guessed_letters).to eq ["w"]
  end


  it 'keeps track of progress' do
      game.get_word("word")
      expect(game.guess_state).to eq "____"
  end

  it 'keep count of guesses' do
     game.get_word("word")
    game.check_letter("w")
    game.check_letter("x")
    expect(game.guess_count).to eq 2
  end

  it 'has guess limit related to length of word' do
    game.get_word("word")
    expect(game.guess_limit).to eq 3
  end

  it 'wins if user guesses the correct word' do
    game.get_word("word")
    game.check_letter("w")
    game.check_letter("o")
    game.check_letter("r")
    game.check_letter("d")
    expect(game.won).to eq true
  end

  it 'is over if user runs out of guesses' do
    game.get_word("word")
    game.check_letter("w")
    expect(game.guessed_letters).to eq ["w"]
    game.check_letter("w")
    expect(game.guessed_letters).to eq ["w"]
    game.check_letter("q")
    game.check_letter("x")
    expect(game.over).to eq true
  end

end