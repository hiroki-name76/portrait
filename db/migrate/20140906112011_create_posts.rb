class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :owner_id
      t.string :name, null:false
      t.text :content, null:false

      t.timestamps
    end

    add_index :posts, :owner_id
  end
end
