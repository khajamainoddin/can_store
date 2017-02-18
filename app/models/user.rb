class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :bills

  validates_presence_of :name
  before_save :assign_role

 def assign_role
  self.role = Role.find_by name: "Regular" if self.role.nil?
 end

 def admin?
  self.role.name == "Admin"
end

def aao?
  self.role.name == "AAO"
end


def auditor?
  self.role.name == "Auditor"
end

def regular?
  self.role.name == "Regular"
end

end
