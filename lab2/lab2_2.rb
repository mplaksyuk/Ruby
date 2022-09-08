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

def diap(t, r, p_)
    diap = p_ ** r * ( 1 - p_ ** ( -t ) )
    diap.to_f
end

t  = enter_var("t")
r  = enter_var("r")
p_ = enter_var("P")

puts "Diap = max|a| =  #{diap(t, r, p_)}"
