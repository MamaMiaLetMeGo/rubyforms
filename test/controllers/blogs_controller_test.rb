require "test_helper"

class BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog = blogs(:one)
  end

  test "should get index" do
    get blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_url
    assert_response :success
  end

  test "should create blog" do
    assert_difference("Blog.count") do
      post blogs_url, params: { blog: { author: @blog.author, body: @blog.body, category: @blog.category, comments_count: @blog.comments_count, featured_image: @blog.featured_image, likes: @blog.likes, meta_description: @blog.meta_description, meta_keywords: @blog.meta_keywords, meta_title: @blog.meta_title, published_at: @blog.published_at, related_posts_id: @blog.related_posts_id, slug: @blog.slug, status: @blog.status, title: @blog.title, views: @blog.views } }
    end

    assert_redirected_to blog_url(Blog.last)
  end

  test "should show blog" do
    get blog_url(@blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_url(@blog)
    assert_response :success
  end

  test "should update blog" do
    patch blog_url(@blog), params: { blog: { author: @blog.author, body: @blog.body, category: @blog.category, comments_count: @blog.comments_count, featured_image: @blog.featured_image, likes: @blog.likes, meta_description: @blog.meta_description, meta_keywords: @blog.meta_keywords, meta_title: @blog.meta_title, published_at: @blog.published_at, related_posts_id: @blog.related_posts_id, slug: @blog.slug, status: @blog.status, title: @blog.title, views: @blog.views } }
    assert_redirected_to blog_url(@blog)
  end

  test "should destroy blog" do
    assert_difference("Blog.count", -1) do
      delete blog_url(@blog)
    end

    assert_redirected_to blogs_url
  end
end
