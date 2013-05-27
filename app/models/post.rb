class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  
  
  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
end