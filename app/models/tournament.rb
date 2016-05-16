class Tournament < ActiveRecord::Base
  has_many :entries
  has_many :players, through: :entries
  has_many :matchups

  def match_points_for(player)
    matchups.where(winner: player).count
  end

  def matchups_for(player)
    matchups.where("primary_id = #{player.id} or secondary_id = #{player.id}")
  end

  def add_player(player)
    players << player
    build_matchups_for player
  end

  private

  def build_matchups_for(player)
    players.each do |current_player|
      matchups << Matchup.create(primary_id: player.id, secondary_id: current_player.id)
    end
  end
end