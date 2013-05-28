class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :votes, as: :voteable
  
  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  
  def total_votes
    self.votes.where(vote: true).size - self.votes.where(vote: false).size
  end
  
end