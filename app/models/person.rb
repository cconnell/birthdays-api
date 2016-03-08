class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :gift, presence: true
  validates :description, presence: true
  validates :email, presence: true


end
