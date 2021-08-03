class Comment < ApplicationRecord
  belongs_to :post, dependent: destroy

  validates :description, presence: true, length: { minimum: 2 }
end
