# 2
def row(n)
    sum = 0
    for i in 0..n
        sum += 1.0 / (3.0 ** i)
    end

    sum
end

def multiple_sqrt(n)
    return n == 0 ? 0 : Math.sqrt(2.0 + multiple_sqrt(n - 1))  
end

p row(8)

p multiple_sqrt(3)