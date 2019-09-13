fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'] #=> "fiiiissshhhhhh"

def sluggish_octo(fish_arr)
    longest_fish = fish_arr[0]
    (0...fish_arr.length).each do |i|
        (i...fish_arr.length).each do |j|
            longest_fish = fish_arr[j] if fish_arr[j] > fish_arr[i]
        end
    end
    longest_fish
end

def dominant_octo(fish_arr)
    return fish_arr if fish_arr.length < 2

    mid = fish_arr.length / 2
    left = dominant_octo(fish_arr.take(mid)) 
    right = dominant_octo(fish_arr.drop(mid))

    merged = merge(left, right)
    merged[-1]
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
        if left[0] < right[0] || left[0] == right[0]
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged.concat(left)
    merged.concat(right)
    merged
end

def clever_octo
    longest_fish = fish_arr[0]
    fish_arr.each do |fish|
        if fish.length > longest_fish.length
            longest_fish = fish
        end
    end
    longest_fish
end