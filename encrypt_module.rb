require 'digest'

module Encryption
  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

class Person
  include Encryption
  attr_accessor :name, :password

  # ...
  def initialize(name, password = {})
    @name = name
    @password
  end

  def encrypted_password
    encrypt(@password)
  end
end

person = Person.new("Ada")
person.password = "super secret"
puts person.encrypted_password