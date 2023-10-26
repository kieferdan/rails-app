class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  def details
    "This post was created on #{created_at.strftime("%d/%m/%Y")}"
  end

  def self.total
    count
  end
end
