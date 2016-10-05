class Article < ActiveRecord::Base
  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 25 }
  has_many :comments

  belongs_to :user

  def self.search(query_hash)
    result = all
    result = result.where("title like ?", "%#{query_hash[:title]}%") if query_hash[:title]
    result = result.where("body like ?", "%#{query_hash[:body]}%") if query_hash[:body]
    result
  end

end
