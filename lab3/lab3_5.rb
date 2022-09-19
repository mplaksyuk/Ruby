module Math
    PI = 3.141
end

def Y(x, n, c)
    return ( x - c ) / ( x ** (3.0 / 4.0) + x ** (1.0 / n) * c ** (1.0 / 4.0) ) *
           ( x ** (1.0 / 2.0) * c ** (1.0 / 4.0) + n ** (1.0 / 4.0) ) / ( x ** (1.0 / 2.0) + c ** (1.0 / 2.0) ) * 
           ( x ** (1.0 / 2.0) - 2 * x ** (1.0 / 4.0) * c ** (1.0 / 4.0) + c ** (1.0 / n) )
end
  
def Z(x, n, c)
    return Math.sin(2 * x) ** 2 - Math.cos(Math::PI / 3.0 - 2 * x) * Math.sin(2 * x - Math::PI / 6.0) - Math.tan( (Math::PI + x) / (x + 1) ) ** (x / 2.0)
end

def F(x, n, c)
    case x
    when 2...n
        return Y(x, n, c)
    when n...2*n
        return Z(x, n, c)
    else
        return Y(x, n, c) + Z(x, n, c)
    end
end
  
  def subtask1(c, n)
    x = 1.0
    step = (n - 1).to_f / (n + c).to_f
    puts "step is #{step}"
    while x <= n
      puts "#{x} | #{Y(x, n, c).round(10)}"
      x += step
    end
  end
  
  def subtask2(c, n)
    x = Math::PI / n
    step = (Math::PI - x) / ((3/2)*n + c).to_f
    puts "step is #{step}"
    while x <= Math::PI
      puts "#{x} | #{Z(x, n, c)}"
      x += step
    end
  end
  
  def subtask3(c, n)
    x = 2.0
    step = (c - 2).to_f / (2 * n).to_f
    puts "step is #{step}"
    while x <= c
      puts "#{x} | #{F(x, n, c)}"
      x += step
      return if x == c && step == 0
    end
  end

  n = 9
  
  print "Enter c: "
  c = gets.chomp.to_f
  
  puts "Subtask 1:"
  puts "x  |  Y"
  subtask1(c, n)
  
  
  puts "\nSubtask 2:"
  puts "x  |  Z"
  subtask2(c, n)
  
  puts "\nSubtask 3:"
  puts "x  |  F"
  subtask3(c, n)