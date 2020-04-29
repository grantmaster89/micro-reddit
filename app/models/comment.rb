# frozen_string_literal: true

# model for creating comments
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
end
