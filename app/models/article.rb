class Article < ActiveRecord::Base
  has_many :comments
  def self.search(query_hash)
     result = scoped
     result = result.where("title like ?", "%#{title}%") if (title = query_hash[:title]).present?
     result = result.where("body like ?", "%#{body}%") if (body = query_hash[:body]).present?
     result
  end
end
