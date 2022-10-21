# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  move_id    :bigint           not null
#  pokemon_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
  validates :pokemon_id, uniqueness: {scope: :move_id, 
    message: "You already learned this move"
  }

  belongs_to :move
  belongs_to :pokemon
end
