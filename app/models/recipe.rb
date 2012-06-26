class Recipe < ActiveRecord::Base
  validates_presence_of :title
  has_many :ingredients
  belongs_to :category
end
