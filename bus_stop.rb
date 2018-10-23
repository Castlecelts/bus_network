class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_queuer(person)
    @queue << person 
  end



end
