# frozen_string_literal: true

class AddUserRefToEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :entries, :author, null: false, foreign_key: { to_table: :users }
  end
end
