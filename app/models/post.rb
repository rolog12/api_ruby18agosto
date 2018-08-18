class Post < ApplicationRecord
  belongs_to :user
  #validate : title, presence: true 
  validates :body, presence: true
end
