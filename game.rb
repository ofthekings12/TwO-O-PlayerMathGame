class Game

  attr_accessor :current_player, :game_over
  
  def initialize
    @game_over = false
    @players = []
    @players[0] = Player.new("Player 1")
    @players[1] = Player.new("Player 2")
    @turn = 0
  end
  
  def start
    while !@game_over do 
      player = @players[@turn % 2]
      other_player = @players[(@turn + 1) % 2]
  
      new_question = Question.new(player.name)
       new_question.ask
       answer = gets.chomp.to_i
  
       if
        new_question.validate(answer)
        puts "That's correct!"
       else
        player.kill
        puts "WRONG :("
        if 
          player.life == 0
          @game_over = true
          puts "#{other_player.name} wins with a score of  #{other_player.life}/3"
          break
       end
      end
      puts "P1: #{@players[0].life}/3 vs P2: #{@players[1].life}/3"
      @turn = @turn + 1
      puts "------- NEW TURN  --------"
      end
      puts "------- GAME OVER --------"
    end
  end