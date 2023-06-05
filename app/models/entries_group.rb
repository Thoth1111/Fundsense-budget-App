class EntriesGroup < ApplicationRecord
  belongs_to :entries
  belongs_to :groups
end
