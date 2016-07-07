require_relative game.rb

class Player

  attr_accessor :choice

  def initialize
   @choice = nil
  end

  

end

class Human > Player
  attr_accessor :choice

  def initiailize
   
  end

  def make_choice
    @choice = gets.chomp.downcase
  end

end



class Computer > Player

  attr_accessor :computer_choice

  def initialize
     @computer_choice = nil
  end

  def computer_move
    puts "Player 2 is choosing now"
    @computer_choice = OPTIONS.sample

  end


end