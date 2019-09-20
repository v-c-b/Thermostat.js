class Temp

  def self.initialize
    @temp = 20
  end

  def self.set_temp(temp = 20)
    @temp = temp
  end

  def self.get_temp
    return @temp
  end
end
