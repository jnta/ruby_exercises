def cipher(text, key)
    ascii = text.chars.map {|c| c.ord}
    shifted = rotate(ascii, key).map {|c| c.chr }.join
    puts shifted
end

def rotate(char_list, key)
    # ascii table uppercase: 65 - 90
    # ascii table lowercase: 97 - 122
    shifted = char_list.map do |c|
        if c >= 65 and c <= 90
            c = ((c - 65 + key) % 26) + 65
        elsif c >= 97 and c <= 122
            c = ((c - 97 + key) % 26) + 97
        else
            # if c is not a char
            c
        end
    end
    shifted
end

cipher("What a string!", 5)