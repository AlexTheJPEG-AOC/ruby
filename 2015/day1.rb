floor = 0
instruction_index = 0
basement_index = 0
legend = {'(' => 1, ')' => -1}

file = File.open("input1.txt")
file.read.each_char do |c|
    floor += legend[c]

    if basement_index == 0 and floor == -1
        basement_index = instruction_index + 1
    end

    instruction_index += 1
end

file.close
puts floor, basement_index
