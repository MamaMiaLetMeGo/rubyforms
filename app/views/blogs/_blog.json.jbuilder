json.extract! blog, :id, :title, :body, :author, :slug, :published_at, :category, :featured_image, :status, :views, :likes, :comments_count, :meta_title, :meta_description, :meta_keywords, :related_posts_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
