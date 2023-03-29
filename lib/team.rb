class Team 
  attr_reader :name, :city, :roster

  def initialize (name, city, roster = [])
    @name = name
    @city = city
    @roster = roster
  end

  
end