# frozen_string_literal: true

# Group model.
class Group < ApplicationRecord
  belongs_to :user
  has_many :entries, -> { order(created_at: :desc) }

  validates :name, presence: true
  validates :bio, presence: true
end
