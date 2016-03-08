class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :gift, presence: true

end
