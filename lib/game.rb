class Game

  WINNING_COMBINATIONS = { "rock" => "scissors", "paper" => "rock", "scissors" => "paper" }
  OPTIONS = ["rock", "paper", "scissors"]

  def initialize(num_of_players)
    if num_of_players == 1
      @player1 = Human.new
      @player2 = Computer.new
    elsif num_of_players == 2
      @player1 = Human.new
      @player2 = Human.new
    end
  end

  def play
    puts "Welcome to Rock Paper Scissors"
    puts "Make a choice:"
    @player1.make_choice
  end

  def check_outcome(player1, player2)
    if 




end