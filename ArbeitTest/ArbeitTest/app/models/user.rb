class User < ActiveRecord::Base
  has_many :comments
  belongs_to :seminar 
end
