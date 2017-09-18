class Seminar < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :user_id, presence: true
    has_and_belongs_to_many :participant

end
