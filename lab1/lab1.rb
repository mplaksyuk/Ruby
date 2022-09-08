class String
    def numeric?
        Float(self) != nil rescue false
    end
end

module Math
    PHY = (Math.sqrt(5) - 1) / 2
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

def print_formula(y = '')
    if y.to_s.length > 0
        y = "= #{y}"
    end

    5.times { print"\n" }
    print "     4.1 * 10^(-1.7)    tg^3|x| - lg√(a + phy)        \n"
    print "Y = ----------------- + ---------------------- #{ y } \n"
    print "    (x - π) * sin(5x)           e^π                   \n"
    5.times { print"\n" }
end

def custom_function(x, a)
    numerator1   = 4.1 * (10 ** (-1.7))                                              # 4.1 * 10^(-1.7) 
    denomirator1 = (x - Math::PI) * Math.sin(5 * x)                                  # (x - π) * sin(5x)

    numerator2   = Math.tan( x.abs ) ** 3 - Math.log10( Math.sqrt( a + Math::PHY ) ) # tg^3|x| - lg√(a + phy)
    denomirator2 = Math.exp(1) ** Math::PI                                           # e^π  

    y = (numerator1 / denomirator1) + (numerator2 / denomirator2)
end

print "Const Phy equal: #{Math::PHY}"

print_formula

x = enter_var "x"
a = enter_var "a"

y = custom_function x, a

print_formula y
