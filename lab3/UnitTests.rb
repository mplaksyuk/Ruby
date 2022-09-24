require_relative './lab3_1'
require_relative './lab3_2'
require_relative './lab3_3'
require_relative './lab3_4'
require_relative './lab3_5'

def verify(res, expected, if_true = true, if_false = false) 

    if res == expected
        puts "Unit tests verifying #{res} == #{expected} and result is #{if_true}"
        return
    end

    puts "Unit tests verifying #{res} == #{expected} and result is #{if_false}"
end

A = true
B = true
C = false

X = -20
Y = 60
Z = 4

def testLab3_1() 

    puts "\n\nLab3_1\n"
    formula = Formula.new()

    # a

    verify(formula.try_formula( (!(A and B) or (A or !B))), true)

    # b
    verify(formula.try_formula( ((Z != Y).object_id <= (6 >= Y).object_id or A and B or C or X >= 1.5)), true)

    # c
    verify(formula.try_formula( ((8 - X * 2 <= Z) or (X ** 2 != Y ** 2) and (Z >= 15))), true)

    # d
    verify(formula.try_formula( (X > 0 or Y < 0 and Z >= (X * Y + (-Y / X)) + (-Z))), true)

    # e
    verify(formula.try_formula( (!(A and B or !(C and (!A and B))))), true)

    # f
    verify(formula.try_formula( (X ** 2 + Y ** 2 >= 1 or X >= 0 or Y >= 0)), true)

    # g
    verify(formula.try_formula( ((A or (C or B != B and A) and C) or B)), true)
end

def testLab3_2()
    puts "\n\nLab3_2\n"
    sys_eq = SystemEquations.new()

    verify(sys_eq.y_use_case(-4), -2)
    verify(sys_eq.y_use_if_else(-4), -1)

end

def testLab3_3()
    puts "\n\nLab3_3\n"

    row = MathematicalSeries.new()
    verify(row.row(8).round(4), 1.5)

    sqrt = MultipleSqrt.new()
    verify(sqrt.sqrt(1).round(4), 1.9616)
    verify(sqrt.sqrt(3).round(4), 1.9616)
end

def testLab3_4()
    puts "\n\nLab3_4\n"
    sum = Sum.new()

    verify(sum.sum1(2).round(4), 0.09)
    ax1 = sum.sum2(0, 2, 2).round(4)
    ax2 = sum.sum2(0, 2, 2, 4).round(4)
    verify(ax1, ax2)

    verify(sum.sum3(1).round(4), 0.379)
end

def testLab3_5()
    puts "\n\nLab3_5\n"

    fun = Function.new()

    n = 9

    print "Enter c: "
    c = gets.chomp.to_f

    puts "Subtask 1:"
    puts "x  |  Y"
    fun.subtask1(c, n)


    puts "\nSubtask 2:"
    puts "x  |  Z"
    fun.subtask2(c, n)

    puts "\nSubtask 3:"
    puts "x  |  F"
    fun.subtask3(c, n)
end

testLab3_1
testLab3_2
testLab3_3
testLab3_4
testLab3_5