class Pokemon < ApplicationRecord
  validates :name, uniqueness: true
  serialize :moves 
end
