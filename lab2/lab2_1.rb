def square(peaks = [])
    sum = 0;
    len = peaks.length
    for i in (0..len - 1)
        sum = sum + (peaks[i]['x'] + peaks[(i + 1) % len]['x']) * (peaks[i]['y'] - peaks[(i + 1) % len]['y'])
    end

    res = sum.abs / 2
end

def peaks_init(points)
    i = 0
    peaks = []
    while i < points.length
        peaks.push({ "x" => points[i][0].to_f, "y" => points[i + 1][0].to_f })
        i = i + 2
    end

    peaks
end

str = "(52,289) (46,258) (63,240) (94,234) (132,236)
(184,234) (198,207) (171,181) (120,171) (92,157)
(49,134) (43,99) (63,82) (109,69) (157,59)
(202,57) (245,51) (278,47) (309,41) (340,31)
(379,33) (415,61) (430,86) (447,140) (474,196)
(483,245) (471,274) (411,292) (350,302) (299,308)
(250,309) (193,308) (154,308) (111,309) (84,302)"

points = str.scan(/(-?\d+[.]?\d+)/)

peaks = peaks_init(points)

puts square peaks



