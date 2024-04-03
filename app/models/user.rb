# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :drafts

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def admin?
    is_admin
  end
end
