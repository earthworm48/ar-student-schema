require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class ChangeBirthdayDatatypeToDate < ActiveRecord::Migration
  def change
    change_column(:students, :birthday, :date)
  end
end
