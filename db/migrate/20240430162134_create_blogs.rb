class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :slug
      t.datetime :published_at
      t.string :category
      t.string :featured_image
      t.string :status
      t.integer :views
      t.integer :likes
      t.integer :comments_count
      t.string :meta_title
      t.text :meta_description
      t.string :meta_keywords
      t.references :related_posts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
