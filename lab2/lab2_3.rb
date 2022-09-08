def to_10format(str = 0)
    str = str.to_s
    nums_2 = str.scan(/\d+/)
    discharge = nums_2[0].length - 1

    res = 0.0
    for num_2 in nums_2
        for i in (0..num_2.length - 1)
            res = res + num_2[i].to_i * (2 ** discharge)
            discharge = discharge - 1
        end
    end

    res
end

str = 100011111001

p to_10format str