class Player < ApplicationRecord
  belongs_to :ladder
  has_many :matches
end
