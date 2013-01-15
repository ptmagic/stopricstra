class RemoveCloumnAuthorasdasdasdToBolgposts < ActiveRecord::Migration
  def up
    remove_column :bolgposts, :author
  end

  def down
  end
end
