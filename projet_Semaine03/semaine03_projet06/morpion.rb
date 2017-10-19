class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
    attr_accessor :case
    
  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
      @case = ' '  
  end
  
  def to_s
    #TO DO : doit renvoyer la valeur au format string
      @case.to_s
  end

end

class Board
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
     attr_accessor :grill , :a1 , :a2 , :a3 , :b1 , :b2 , :b3 , :c1 , :c2 , :c3

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  @grill = Hash.new{
    @a1 = BoardCase.new
    @b1 = BoardCase.new
    @c1 = BoardCase.new
    @a2 = BoardCase.new
    @b2 = BoardCase.new
    @c2 = BoardCase.new
    @a3 = BoardCase.new
    @b3 = BoardCase.new
    @c3 = BoardCase.new
      )
  end

  def plateau
  #TO DO : afficher le plateau
        puts
  puts "   1   2   3"
  puts "A  #{@a1.case} | #{@a2.case} | #{@a3.case} " 
  puts "  ---|---|---"
  puts "B  #{@b1.case} | #{@b2.case} | #{@b3.case} "
  puts "  ---|---|---"
  puts "C  #{@c1.case} | #{@c2.case} | #{@c3.case} "
  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  end

  def victory?
    #TO DO : qui gagne ?
      case array.length
    when 3
      self.victory(player) 
    if  [[@a1, @a2, @a3],
  [@a1, @b2, @c3],
  [@a1, @b1, @c1],
  [@b1, @b2, @b3],
  [@c1, @c2, @c3],
  [@c1, @b2, @a3],
  [@a2, @b2, @c2],
  [@a3, @b3, @c3]]
  
         win_combos.each do |combos| 
    if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
      puts "You win! Good job!"
      exit 
    elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
      puts "You win! Good job!"
      exit
        
    end
  end

       
class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :name, :player_array
  
  def initialize(name='')
    @name = name
    @player_array = []
  end

end
  
class Game
    
  def initialize
    #TO DO : créé 2 joueurs, créé un board
         @game_turn = 0
    @player1 = Player.new
    @player2 = Player.new
 
          puts "\n\n  Welcome to ### TIC TAC TOE ### !\n\n"
    print "Player 1 name?: "
    @player1.name = gets.chomp
    print "Player 2 name?: "
    @player2.name = gets.chomp
      
        puts "List of players: #{@player1.name} vs #{@player2.name}"
      @grill.display_board
  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  
    end
  end

end

Game.new.go