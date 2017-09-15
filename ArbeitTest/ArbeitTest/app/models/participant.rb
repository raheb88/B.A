class Participant < ActiveRecord::Base
  #attr_accessor :password, :email
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true
  belongs_to :seminar
  default_scope -> {order(created_at: :desc)}
  #validates :seminar_id, presence: true
end
