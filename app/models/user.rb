class User < ApplicationRecord
  has_many :blogs
  has_many :comments

  validates :first_name, :presence => true
  validates :first_name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => "Only letters allowed" }

  validates :last_name, :presence => true
  validates :last_name, :format => { :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, :message => "Only letters allowed" }

  def full_name
    "#{first_name} #{last_name}"

  end


end
