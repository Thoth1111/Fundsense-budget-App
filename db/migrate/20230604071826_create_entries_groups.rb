class CreateEntriesGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :entries_groups do |t|
      t.references :entries, null: false, foreign_key: true
      t.references :groups, null: false, foreign_key: true

      t.timestamps
    end
  end
end
