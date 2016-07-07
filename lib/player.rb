require_relative "game.rb"

class Player

  attr_accessor :choice

  def initialize
   @choice = nil
  end

end

class Human < Player
  attr_accessor :choice

  def make_choice
    @choice = gets.chomp.downcase
  end

end



class Computer < Player

  def make_choice
    options = ["rock", "paper", "scissors"]
    puts "Player 2 is choosing now"
    @choice = options.sample
  end


end