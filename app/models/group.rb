# Group model.
class Group < ApplicationRecord
  after_commit :update_icon, on: :create

  belongs_to :user
  has_one_attached :icon
  has_many :entries_groups, dependent: :destroy
  has_many :entries, dependent: :destroy, class_name: 'Entry'

  validates :user_id, presence: true

  validates :name, presence: true
  validates :icon, presence: true

  private

  def update_icon
    if icon.attached?
      update_column(:icon, icon.url)
    else
      self.icon = icon
      save
    end
  end
end
