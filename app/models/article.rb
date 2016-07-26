class Article < ActiveRecord::Base
  has_many :comments
  
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%")
  end
end
