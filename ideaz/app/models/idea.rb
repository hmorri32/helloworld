class Idea < ApplicationRecord
  validates :title, :body, presence: true

  enum quality: [:swill, :plausible, :genius]
end
