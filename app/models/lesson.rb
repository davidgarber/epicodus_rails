class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :body, :presence => true
  validates :number, :presence => true
end
