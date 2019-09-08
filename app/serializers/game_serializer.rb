class GameSerializer < ActiveModel::Serializer
  attributes :id,:name,:max_players,:min_players,:max_playtime,:min_playtime,:image,:thumbnail,:users
end
