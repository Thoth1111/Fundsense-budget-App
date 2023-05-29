# frozen_string_literal: true

json.array! @entries, partial: 'entries/entry', as: :entry
