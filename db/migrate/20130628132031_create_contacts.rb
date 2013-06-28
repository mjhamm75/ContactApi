class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :org_id
      t.string :email
      t.string :phone
      t.string :cell

      t.timestamps
    end
  end
end
