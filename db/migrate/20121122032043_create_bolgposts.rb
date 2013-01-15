class CreateBolgposts < ActiveRecord::Migration
  def change
    create_table :bolgposts do |t|
      t.integer :node
      t.string :title
      t.string :content
      t.integer :author 
      t.timestamps
    end
  end
end
