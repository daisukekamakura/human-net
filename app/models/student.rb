class Student < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :memo, presence: true
end
