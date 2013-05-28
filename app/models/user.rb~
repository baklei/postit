class User < ActiveRecord::Base
    # 1. Rails assumes a table called "Users"
    # 2. Rails automagically knows table attribute
    # 3. Rails gives us getter/setter methods on all attributes
  has_many :posts
  has_many :comments
  #many to many
  # 1. has_many_belongs_to_many
  # 2. has_many :through
  has_secure_password
end
