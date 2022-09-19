class String
    def numeric?
        Float(self) != nil rescue false
    end
end

def enter_var(var_name)
    print "Enter #{var_name}: "
    var = gets.chomp

    while var.numeric? != true do
        print "Enter valid #{var_name}: "
        var = gets.chomp
    end    
    var.to_f
end

n = enter_var("Matrix order").to_i;

a = Array.new(n) { Array.new(n) }
b = Array.new(n)
x = Array.new(n)
d = 0;

for i in 0..n-1
    for j in 0..n-1
        a[i][j] = enter_var("a[#{i}][#{j}]")
    end
end

for i in 0..n-1
    b[i] = enter_var("b[#{i}]")
end

for k in 0..n-1
    for j in k + 1..n-1
        d = a[j][k] / a[k][k]
        for i in k..n-1
            a[j][i] = a[j][i] - d * a[k][i]
        end
        b[j] = b[j] - d * b[k]
    end
end

range = n-1..0
(range.first).downto(range.last).each {|k|
    d = 0
    for j in k + 1..n-1
        s = a[k][j] * x[j]
        d = d + s
    end
    x[k] = (b[k] - d) / a[k][k]
}

puts "roots for this system: #{x}" 
