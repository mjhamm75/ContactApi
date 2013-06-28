class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.integer :party_id

      t.timestamps
    end
  end
end
