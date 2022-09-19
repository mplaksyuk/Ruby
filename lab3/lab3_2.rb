def Y_use_case(x) 
    case x
    when -4..0 #problem with range
        return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
    when 0..12 #problem with range
        return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
    else
        return 1 / ( 1 + x / (1 + x / (1 + x)))
    end
end

def Y_use_id_else(x) 
    if x > -4 and x <= 0
        return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
    elsif x > 0 and x <= 12
        return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
    else
        return 1 / ( 1 + x / (1 + x / (1 + x)))
    end
end

