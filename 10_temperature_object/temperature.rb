#done

class Temperature
  def initialize(opts = {})
    @options = opts
  end

  def in_fahrenheit
    if @options.has_key?(:f)
      return @options[:f]
    end
    if @options.has_key?(:c)
      return ((@options[:c] * 9)/5) + 32
    end
  end

  def in_celsius
    if @options.has_key?(:f)
      return ((@options[:f] - 32) * 5) / 9
    end
    if @options.has_key?(:c)
      return @options[:c]
    end
  end
end

class Celsius
  def initialize(temps)
    @temps = temps
  end
  def in_fahrenheit
    return ((@temps * 9)/5) + 32
  end

  def in_celsius
    return @temps
  end
end

class Fahrenheit
  def initialize(temps)
    @temps = temps
  end
  def in_fahrenheit
    return @temps
  end

  def in_celsius(num=0)
    return ((@temps - 32 )*5)/9
  end
end

