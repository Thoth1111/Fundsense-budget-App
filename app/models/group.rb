# frozen_string_literal: true

class Group < ApplicationRecord
    belongs_to :user
    has_many :entries
    
    validates :name, presence: true
    validates :bio, presence: true
end
