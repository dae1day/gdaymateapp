class User < ApplicationRecord
  has_one :profile
  has_many :listings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         mount_uploader :avatar, ImageUploader

        

  after_create do
    self.create_profile
  end

end
