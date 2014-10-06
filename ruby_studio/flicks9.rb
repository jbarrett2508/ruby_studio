class Player
  attr_accessor :name
  attr_reader :health
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def blam
    (@health -= 10)
    puts "#{@name} got blammed!"
  end

  def w00t
    (@health += 15)
    puts "#{@name} got w00ted!"
  end

  def to_s
    "I'm #{@name} and I have a health of #{@health} and a score of #{score}"
  end
end

player1 = Player.new("moe")
puts player1

player2 = Player.new("lawrence", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3

players = [player1, player2, player3]


puts "There are #{players.size} players in the game:"

players.each do |player|
  puts player.health
end

players.pop
player4 = Player.new("shemp", 90)
players.push(player4)

players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end

