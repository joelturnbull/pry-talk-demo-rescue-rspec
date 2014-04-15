require_relative '../spec_helper'

describe "a bowling game" do
  it "is a thing" do
    expect(BowlingGame.new).to_not be_nil
  end

  it "has a score" do
    expect(BowlingGame.new.score).to eq(0)
  end

  it "keeps a score" do
    game = BowlingGame.new
    game.bowl(4)
    expect(game.score).to eq(4)
  end

  it "calculates a score" do 
    game = BowlingGame.new
    game.bowl(4)
    game.bowl(5)
    expect(game.score).to eq(9)
  end
end
