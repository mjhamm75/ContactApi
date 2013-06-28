class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :org_id
      t.string :contact_type_cd
      t.integer :rank

      t.timestamps
    end
  end
end
