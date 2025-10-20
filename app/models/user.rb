class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # This must say 'role'
  enum role: { regular: 0, admin: 1 }

  has_many :recipes, dependent: :destroy

  after_initialize :set_default_role, if: :new_record?

  private

  def set_default_role
    # This must also say 'role'
    self.role ||= :regular
  end
end
