class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    first_name = ['anonymous']
    last_name = ['name']
    number = rand.to_s[2..4]

    username = "#{first_name.sample}-#{last_name.sample}-#{number}"

    create(username: username)
  end
end
