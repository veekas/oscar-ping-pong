# == Schema Information
#
# Table name: bracket_matchups
#
#  id                  :integer          not null, primary key
#  tournament_id       :integer
#  matchup_id          :integer
#  primary             :integer
#  secondary           :integer
#  winner_child        :integer
#  loser_child         :integer
#  tournament_sequence :integer
#  winner_id           :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_bracket_matchups_on_matchup_id     (matchup_id)
#  index_bracket_matchups_on_tournament_id  (tournament_id)
#
# Foreign Keys
#
#  fk_rails_...  (matchup_id => matchups.id)
#  fk_rails_...  (tournament_id => tournaments.id)
#

FactoryGirl.define do
  factory :bracket_matchup do
    
  end
end
