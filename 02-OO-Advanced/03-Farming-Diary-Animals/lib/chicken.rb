require_relative "animal"

class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
  super()
    @eggs = 0
    @gender = gender
  end

  def talk
    if @gender == 'female'
      return 'cluck cluck'
    else
      return 'cock-a-doodle-doo'
    end
  end

  def feed!
    @eggs += 2 if @gender == 'female'
    super
  end

end
