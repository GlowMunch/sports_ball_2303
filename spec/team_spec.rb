require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a Team
  end

  it 'Has a roster' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end

  it 'Has a player count' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it 'Can add players' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team.add_player(player_1)
    team.add_player(player_2)
    expect(team.player_count).to eq(2)
    expect(team.roster).to include(player_1, player_2)
  end

  it 'Can calculate roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan" , 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.player_count).to eq(4)
    expect(team.roster).to include(player_1, player_2, player_2, player_4)
    expect(team.long_term_players).to include(player_1, player_3)
  end

  it 'Can calculate roster' do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan" , 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.player_count).to eq(4)
    expect(team.roster).to include(player_1, player_2, player_2, player_4)
    expect(team.long_term_players).to include(player_1, player_3)
    expect(team.short_term_players).to include(player_2, player_4)
  end
  


end

