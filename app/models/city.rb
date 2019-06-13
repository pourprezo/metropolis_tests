class City < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 4, maximum: 15}
end
