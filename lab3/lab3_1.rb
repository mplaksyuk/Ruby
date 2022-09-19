A = true
B = true
C = false

X = -20
Y = 60
Z = 4

def try_formula(condition, true_text, false_text)
    if condition
        p true_text
    else
        p false_text
    end
end

# a
try_formula( (!(A and B) or (A or !B)), "yes", "no")

# b
try_formula( ((Z != Y).object_id <= (6 >= Y).object_id or A and B or C or X >= 1.5), "yes", "no")

# c
try_formula( ((8 - X * 2 <= Z) or (X ** 2 != Y ** 2) and (Z >= 15)), "yes", "no")

# d
try_formula( (X > 0 or Y < 0 and Z >= (X * Y + (-Y / X)) + (-Z)), "yes", "no")

# e
try_formula( (!(A and B or !(C and (!A and B)))), "yes", "no")

# f
try_formula( (X ** 2 + Y ** 2 >= 1 or X >= 0 or Y >= 0), "yes", "no")

# g
try_formula( ((A or (C or B != B and A) and C) or B), "yes", "no")
