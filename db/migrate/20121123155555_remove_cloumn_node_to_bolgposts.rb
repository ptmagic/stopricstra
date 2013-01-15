class RemoveCloumnNodeToBolgposts < ActiveRecord::Migration
  def up
    remove_column :bolgposts, :node
  end

  def down
  end
end
