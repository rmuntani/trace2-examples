require_relative './animal'

class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def serialize
    {
      name: name,
      friends: friends.map(&:name),
      favorite_animals: ::Animal.default
    }
  end

  private

  def friends
    return [] if name != 'Neymar'

    [
      User.new('Bradley'),
      User.new('Rufus'),
      User.new('Cunha')
    ]
  end
end
