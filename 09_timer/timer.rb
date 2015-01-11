#done

class Timer  
  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds=(tm)
    if tm == nil
      @seconds = 0
    else
      @seconds = tm
    end
    @sec = @seconds % 60
    @min = (@seconds / 60) % 60
    @hr = @seconds / 3600
  end

  def padcheck
    if @sec < 10
      @sec = "0#{@sec}"
    end
    if @min < 10 
      @min = "0#{@min}"
    end
    if @hr < 10 
      @hr = "0#{@hr}"
    end
  end

  def time_string
    padcheck
    puts "#{@hr}:#{@min}:#{@sec}"
  end
end