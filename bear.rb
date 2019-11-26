class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def fish_munched()
    return @stomach.length
  end

end
