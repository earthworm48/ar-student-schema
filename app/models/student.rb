require_relative '../../db/config'
require 'date'
require 'byebug'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :age, numericality: {greater_than_or_equal_to: 5 }
  validates :email, uniqueness: true, format: { with: /\w+\@\w+\.\w{2,}/}
  validates :phone, format: { with: /\W*([1-9][0-9][0-9])\W*([0-9]{3})\W*([0-9]{4})/}

  def age
    now = Date.today.year
    @age = now - birthday.year 
  end

  def name
    # @name = self.first_name.concat(" " + self.last_name)
    # byebug
    name = first_name + " " + last_name
  end

  def validate_email

  end



end