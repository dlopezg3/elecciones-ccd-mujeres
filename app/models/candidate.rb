class Candidate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :candidacy, dependent: :destroy

  validate :password_complexity

  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[a-z])(?=.*?[#?!@$%^&*-]).{6,70}$/

    errors.add :password, 'La contraseña debe contenter por lo menos 6 caracteres, una letra y un caracter especial como #?!@$%^&*-'
  end
end
