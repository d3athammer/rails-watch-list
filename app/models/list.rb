class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  # movies can only be accessed through bookmarks in this case.
  has_many :movies, through: :bookmarks, dependent: :destroy
end
