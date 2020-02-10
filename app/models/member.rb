class Member
  attr_reader :name, :role, :house, :patronus

  def initialize(name, role, house, patronus, id)
    @name = name
    @role = role
    @house = house
    @patrunus = patronus
    @id = id
  end
end
