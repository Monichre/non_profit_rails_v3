class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :email
  validates :email, presence: true, allow_nil: false, allow_blank: false
  validates :password, presence: true, allow_nil: false, allow_blank: false

  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_and_belongs_to_many :non_profits
  has_many :posts
end
