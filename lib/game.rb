
require_relative "player.rb"

class Game

  WINNING_COMBINATIONS = { "rock" => "scissors", "paper" => "rock", "scissors" => "paper" }

  def initialize(num_of_players)
    @num_of_players = num_of_players
    if num_of_players == 1
      @player1 = Human.new
      @player2 = Computer.new
    elsif num_of_players == 2
      @player1 = Human.new
      @player2 = Human.new
      @outcome = nil
    end
  end

  def welcome_message
    puts "Rock Paper Scissors."
  end

  def print_instructions
    puts "To make a move, type the hand sign you would like to use\n e.g. \"rock\", \"paper\", \"scissors\""
  end

  def play
    puts "Welcome to Rock Paper Scissors\n You must choose: "
    @player1.make_choice
  end

  def check_outcome(opponent_choice)
    if @player1.choice == opponent_choice
      @outcome = "The game is a tie."
    elsif WINNING_COMBINATIONS[@player1.choice] == opponent_choice
      @outcome = "Player 1 is the winner."
    else
      @outcome = "Player 2 is the winner."
    end
  end

  def print_outcome
    puts @outcome
  end

  def get_player_choice(player)
    print "Please enter your choice now: "
    player.make_choice
  end

  def validate_player_choice(player)
    unless ["rock", "paper", "scissors"].include?(player.choice)
      puts "Please enter either \"rock\", \"paper\", or \"scissors\""
      get_player_choice(player)
    end
  end


  def game_loop
    welcome_message
    print_instructions
    until @outcome
      @player1.make_choice
      validate_player_choice(@player1)
      @player2.make_choice
      validate_player_choice(@player2)
      check_outcome(@player2.choice)
      print_outcome
    end
  end

end