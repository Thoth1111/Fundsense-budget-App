# frozen_string_literal: true

class Entry < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :group

    validates :name, presence: true
    validates :amount, presence: true
    
end
