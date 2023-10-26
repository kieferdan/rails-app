class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :user

  def details
    "This post was created on #{created_at.strftime("%d/%m/%Y")}"
  end

  def self.total
    count
  end
end
