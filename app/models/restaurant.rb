# frozen_string_literal: true

class Restaurant < ApplicationRecord # :nodoc:
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :category
  categories = %w[chinese italian japanese french belgian]
  validates_inclusion_of :category, in: categories
end
