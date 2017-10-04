class Staff < ActiveRecord::Base
  validates_presence_of :name, :password
  validates_uniqueness_of :name
  # has_secure_password

  belongs_to :truck

  def admin?
    self.admin
  end
end