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

  def long_term_players
    roster.find_all do |rost|
      rost.contract > 24
    end
  end

  def short_term_players
    roster.find_all do |rost|
      rost.contract <= 24
    end
  end

  def total_value
    total = 0
    roster.each do |sal|
      sal.cost
    end

  end

  def details

  end

end