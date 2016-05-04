class Matchup < ActiveRecord::Base
  belongs_to :tournament
  has_many :players
  has_many :games

  def self.for_players(*players)
    where(primary: players, secondary: players).first
  end
end
