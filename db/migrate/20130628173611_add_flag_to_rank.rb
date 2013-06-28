class AddFlagToRank < ActiveRecord::Migration
  def change
    add_column :ranks, :flag, :boolean, :default => false
  end
end
