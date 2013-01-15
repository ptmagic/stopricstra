class AddCloumnNodeIdToBolgposts < ActiveRecord::Migration
  def change
    add_column :bolgposts , :node_id, :integer
  end
end
