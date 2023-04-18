def surface_area(length, width, height)
    return 2 * length * width + 2 * width * height + 2 * height * length
end

def smallest_side_area(length, width, height)
    return [length * width, width * height, height * length].min
end

def smallest_perimeter(length, width, height)
    return [2 * length + 2 * width, 2 * width + 2 * height, 2 * height + 2 * length].min
end

def volume(length, width, height)
    return length * width * height
end

wrapping_paper = 0
ribbon = 0

File.readlines("input2.txt").each do |line|
    length, width, height = line.split('x').map(&:to_i)
    wrapping_paper += surface_area(length, width, height) + smallest_side_area(length, width, height)
    ribbon += smallest_perimeter(length, width, height) + volume(length, width, height)
end

puts wrapping_paper, ribbon
