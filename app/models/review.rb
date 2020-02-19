# frozen_string_literal: true

class Review < ApplicationRecord # :nodoc:
  belongs_to :restaurant
  validates_presence_of :content, :rating
  validates_inclusion_of :rating, in: [0, 1, 2, 3, 4, 5]
  validates :rating, numericality: { only_integer: true }
end
