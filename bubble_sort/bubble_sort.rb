def bubble_sort(array)
    len = array.size
    return array if len <= 1

    loop do
        swaped = false
        
        (len - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swaped = true
            end
        end
        break if swaped == false
    end
    p array
end

bubble_sort([4,3,78,2,0,2])