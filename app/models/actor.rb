class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    puts "#{self.first_name} #{self.last_name}"
  end

  def list_roles #all characters of an actor
    self.characters
  end
end
