require('pry')

class Item
  @@list = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all()
    @@list
  end

  # def self.find(name)
  # end
  #
  # def self.sort(name)
  # end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

end
