class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user_id, foreign_key: true
      t.string :title, limit: 50
      t.text :description
      t.text :body

      t.timestamps
    end
  end
end
