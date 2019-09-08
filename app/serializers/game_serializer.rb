class GameSerializer < ActiveModel::Serializer
  attributes :id,:name,:max_player,:min_player,:max_playtime,:min_playtime,:image,:thumbnail,:users
end
