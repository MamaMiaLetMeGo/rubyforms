class Blog < ApplicationRecord
  before_save :generate_slug
  has_many :related_posts, class_name: "RelatedPost"

  private

  def generate_slug
    self.slug = title.parameterize
  end
end
