class RenameColumnInEntriesGroups < ActiveRecord::Migration[7.0]
  def change
    rename_column :entries_groups, :entries_id, :entry_id
    rename_column :entries_groups, :groups_id, :group_id
  end
end
