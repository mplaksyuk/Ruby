class Integer
    def fact
        return (1..(self.zero? ? 1 : self)).inject(:*)
    end
end

EPS = 0.00001

def Sum1(n)
    sum = 0
    num = 0
    while num > EPS or num == 0
        num = ((n - 1).fact.to_f / (n + 1).fact.to_f) ** n * (n + 1)
        sum += num
        n += 1
    end
    return sum
end

def Sum2(n, x, a, stop = Float::INFINITY)
    sum = 0
    num = 0
    while num > EPS or num == 0 and n != stop
        num = (x * Math.log(a,Math::E) ** n).to_f / n.fact.to_f
        sum += num
        n += 1
    end
    return sum
end

def Sum3(n)
    sum = 0
    num = 0
    while num > EPS or num == 0
        num = ((3 * n - 1).fact * (n + 1).fact).to_f / ((3 * n).fact * (2 * n).fact).to_f
        sum += num
        n += 1
    end
    return sum
end

p Sum1(2)
ax1 = Sum2(0, 2, 2)
ax2 = Sum2(0, 2, 2, 4)

puts "#{ax1} == #{ax2} it is #{ax1 == ax2}" 

p Sum3(1)