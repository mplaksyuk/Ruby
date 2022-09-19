a = Array.new(15) { rand(-10..10) }

res = {
    'zero' => [],
    'negative' => [],
    'positive' => []
}

for i in 0..a.length - 1
    if a[i] == 0
        res['zero'] << i
    elsif a[i] < 0
        res['negative'] << i
    else
        res['positive'] << i
    end
end

p a

p res['zero'] + res['negative'] + res['positive']

