class Member
  attr_reader :name, :role, :house, :patronus, :id

  def initialize(name, role, house, patronus, id)
    @name = name
    @role = role
    @house = house
    @patronus = patronus
    @id = id
  end
end
