class AddGroupToEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :entries, :group, null: false, foreign_key: true
  end
end
