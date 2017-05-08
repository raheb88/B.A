class Seminar < ActiveRecord::Base
  validates :title, presesence: true, length: {minumum: 1, maximum: 50}

end
