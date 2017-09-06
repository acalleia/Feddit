class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :forum_id

      t.timestamps
    end

    add_index :posts, :forum_id
  end
end
