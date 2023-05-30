# frozen_string_literal: true

# User model.
class User < ApplicationRecord
  devise :database_authenticatable, :trackable, :registerable, :timeoutable, :lockable, :confirmable,
         :recoverable, :rememberable, :validatable

  has_many :groups, dependent: :destroy
  has_many :entries, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
