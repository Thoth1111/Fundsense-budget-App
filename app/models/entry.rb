# Entry model.
class Entry < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :entries_groups
  has_and_belongs_to_many :groups, through: :entries_groups, class_name: 'Group'

  validates :author_id, presence: true
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :group_ids, presence: true
end
