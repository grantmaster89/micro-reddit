# frozen_string_literal: true

# Model for creating posts
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :body, presence: true
end
