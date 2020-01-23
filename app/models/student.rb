class Student < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3, maximum: 10}
  validates :email, presence: true, length: {minimum: 5, maximum: 20}

end
