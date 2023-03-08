class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_one_attached :avatar

  has_many :tracks,
    foreign_key: :uploader_id,
    class_name: :Track 

  has_many :likes,
    foreign_key: :liker_id,
    class_name: :Like 

  
end
