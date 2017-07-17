require_relative 'game'

describe GuessingGame do
  it 'initialize with word, guessed_letters, guess_count, guess_limit, guess_state, won, over' do
    g = GuessingGame.new
    expect(g.word).to eq ""
    expect(g.guessed_letters).to eq []
    expect(g.guess_count).to eq 0
    expect(g.guess_limit).to eq 0
    expect(g.guess_state).to eq "_ "
    expect(g.won).to eq false
    expect(g.over).to eq false
  end
  it 'accept a word' do


  it 'keeps track of progress'
  it 'keep count of guesses'
  it 'has guess limit related to length of word'
  it 'wins if user guesses the correct word'
  it 'is over if user runs out of guesses'
end