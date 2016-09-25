class Comment < ActiveRecord::Base
  validates :body, length: { minimum: 25 }

  belongs_to :message
  belongs_to :user
end
