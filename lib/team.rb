class Team 
  attr_reader :name, :city

  def initialize (name, city, roster=[])
    @name = name
    @city = city
    @roster = roster
    @players = 0
  end

  def roster
    @roster
  end

  def player_count
    @players
  end

  def add_player(player)
    @roster << player
    @players += 1
  end
  
end