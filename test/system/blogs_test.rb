require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "should create blog" do
    visit blogs_url
    click_on "New blog"

    fill_in "Author", with: @blog.author
    fill_in "Body", with: @blog.body
    fill_in "Category", with: @blog.category
    fill_in "Comments count", with: @blog.comments_count
    fill_in "Featured image", with: @blog.featured_image
    fill_in "Likes", with: @blog.likes
    fill_in "Meta description", with: @blog.meta_description
    fill_in "Meta keywords", with: @blog.meta_keywords
    fill_in "Meta title", with: @blog.meta_title
    fill_in "Published at", with: @blog.published_at
    fill_in "Related posts", with: @blog.related_posts_id
    fill_in "Slug", with: @blog.slug
    fill_in "Status", with: @blog.status
    fill_in "Title", with: @blog.title
    fill_in "Views", with: @blog.views
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "should update Blog" do
    visit blog_url(@blog)
    click_on "Edit this blog", match: :first

    fill_in "Author", with: @blog.author
    fill_in "Body", with: @blog.body
    fill_in "Category", with: @blog.category
    fill_in "Comments count", with: @blog.comments_count
    fill_in "Featured image", with: @blog.featured_image
    fill_in "Likes", with: @blog.likes
    fill_in "Meta description", with: @blog.meta_description
    fill_in "Meta keywords", with: @blog.meta_keywords
    fill_in "Meta title", with: @blog.meta_title
    fill_in "Published at", with: @blog.published_at
    fill_in "Related posts", with: @blog.related_posts_id
    fill_in "Slug", with: @blog.slug
    fill_in "Status", with: @blog.status
    fill_in "Title", with: @blog.title
    fill_in "Views", with: @blog.views
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog" do
    visit blog_url(@blog)
    click_on "Destroy this blog", match: :first

    assert_text "Blog was successfully destroyed"
  end
end
