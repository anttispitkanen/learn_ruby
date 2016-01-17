class Timer

  attr_accessor :seconds

  def seconds (seconds=0)
    @seconds = seconds
  end

  def padded number
    if number < 10
      return "0#{number}"
    else
      return "#{number}"
    end
  end

  def time_string
    seconds = @seconds
    num_seconds = 0
    num_minutes = 0
    num_hours = 0

    if seconds > 59
      num_seconds = seconds % 60
    else
      num_seconds = seconds
    end
      seconds -= num_seconds
      seconds /= 60

    if seconds > 59
      num_minutes = seconds % 60
    else
      num_minutes = seconds
    end
      seconds -= num_minutes
      seconds /= 60

    num_hours = seconds

    return "#{padded(num_hours)}:#{padded(num_minutes)}:#{padded(num_seconds)}"

  end

end

timer = Timer.new
timer.seconds = 0
puts timer.time_string
