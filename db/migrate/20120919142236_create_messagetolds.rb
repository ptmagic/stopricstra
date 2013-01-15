class CreateMessagetolds < ActiveRecord::Migration
  def change
    create_table :messagetolds do |t|
      t.string :user
      t.text :msg

      t.timestamps
    end
  end
end
