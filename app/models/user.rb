# User model.
class User < ApplicationRecord
  devise :database_authenticatable, :trackable, :registerable, :timeoutable, :lockable,
         :recoverable, :rememberable, :validatable

  has_many :groups, dependent: :destroy
  has_many :entries, foreign_key: :author, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }

  def is?(role)
    self.role == role.to_s
  end
end
