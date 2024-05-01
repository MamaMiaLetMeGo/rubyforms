class CreateRelatedPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :related_posts do |t|
      t.references :blog, null: false, foreign_key: true
      t.references :related_post, null: false, foreign_key: { to_table: :blogs }

      t.timestamps
    end
  end
end


