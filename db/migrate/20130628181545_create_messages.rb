class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :org_id
      t.string :note

      t.timestamps
    end
  end
end
