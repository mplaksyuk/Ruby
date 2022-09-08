def to_2format(num = 0)
    if num == 0
        res = "0"
    else 
        res = ""
    end

    parts = num.to_s.scan(/\d+/)

    real = parts[0].to_i

    while real > 0 
        res = "#{real % 2}#{res}"
        real = real / 2
    end

    if parts[1] and parts[1].to_i != 0
        fract = "0.#{parts[1]}".to_f
        res = "#{res}."
        while fract != 0.0
            res = "#{res}#{(fract * 2).to_i}"
            fract = fract * 2 % 1
        end
    end

    res
end

str = 14.5

p to_2format str