class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments


  validates :user_id, :presence => true
  validates :user_id, :numericality => true

  validates :title, :presence => true
  validates :title, length: { minimum: 1 }

  validates :body, :presence => true
  validates :title, length: { minimum: 10 }

  validates :image, :presence => true

end
