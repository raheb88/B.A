class Seminar < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :participants
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :user_id, presence: true


end
