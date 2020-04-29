# frozen_string_literal: true

# Modeling a user
class User < ApplicationRecord
  validates :name, :email, :bio, presence: true
  validates :email, uniqueness: true, on: :create
  validates :bio, length: { minimum: 5 }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
