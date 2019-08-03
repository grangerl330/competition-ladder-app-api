class LadderSerializer < ActiveModel::Serializer
  attributes :id, :title, :size, :user_id

  has_many :players
end
