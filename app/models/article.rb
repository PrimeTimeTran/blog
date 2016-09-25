class Article < ActiveRecord::Base
  has_many :comments
  def self.search(query_hash)
    result = all
    result = result.where("title like ?", "%#{query_hash[:title]}%") if query_hash[:title]
    result = result.where("body like ?", "%#{query_hash[:body]}%") if query_hash[:body]
    result
  end
end
