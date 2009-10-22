class Post < ActiveRecord::Base
  has_many :comments
  validates_presence_of :title, :body
  validates_length_of :body,
                            :minimum =>10,
                            :message => "It is not in good length"
  validates_length_of :title,
                            :within => 5..50
  def Post.all_published
    Post.find_all_by_published(true).reverse
  end
  
end
