class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "has already been added to this list" }
  validates :comment, presence: true, length: { minimum: 6, message: "must be at least 6 characters long" }
end
