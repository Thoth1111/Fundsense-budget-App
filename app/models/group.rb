# Group model.
class Group < ApplicationRecord
  belongs_to :user
  has_one_attached :icon
  has_many :entries_groups, dependent: :destroy
  has_many :entries, dependent: :destroy, class_name: 'Entry'

  validates :user_id, presence: true

  validates :name, presence: true
  validates :icon, presence: true
end
