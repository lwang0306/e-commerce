class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :age, numericality: {greater_than_or_equal_to: 0}
  validates :phone_number, presence: true, length: {maximum: 13, too_long: "%{count} characters is the maximum allowed"}
  validates :phone_number, format: { with: /^\d*$/, message: "only allows digits" ,:multiline => true}
  validates :gender, format: { with: /^[f,F][e,E][m,M][a,A][l,L][E,e]$|^[m,M][a,A][l,L][E,e]$/, message: "only allows male or female" ,:multiline => true}
end
