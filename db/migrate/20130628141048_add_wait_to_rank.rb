class AddWaitToRank < ActiveRecord::Migration
  def change
    add_column :ranks, :wait, :integer
  end
end
