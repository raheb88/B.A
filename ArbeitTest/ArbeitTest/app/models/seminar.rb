class Seminar < ActiveRecord::Base
  has_many :participants, dependent: :destroy
end
