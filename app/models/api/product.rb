class Api::Product < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 2, maximum: 255 },
                   uniqueness: true
end
