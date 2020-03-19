class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # USER_TYPE_OPTIONS = ["advisor", "user"]
  include PgSearch::Model

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :advisor_appointments, through: :services, source: :appointments
  has_many :reviews, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :milestones, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chat_rooms, dependent: :destroy, through: :messages
  validates :username, uniqueness: true

  # validates_inclusion_of :user_type, in: USER_TYPE_OPTIONS
end
