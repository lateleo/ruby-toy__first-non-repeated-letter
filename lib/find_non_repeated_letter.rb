# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)


def find_first_non_repeated_letter(str)
    chars_ary = str.chars
    ct1 = 0
    chars_ary.each do |elem1|
        ct1 = ct1.next
        ct2 = 0
        var1 = 0
        chars_ary.each do |elem2|
            ct2 = ct2.next
            if elem1 == elem2
                if ct2 == ct1.next
                   var1 = var1.next
                elsif ct1 == ct2.next
                   var1 = var1.next
                end
            end
        end
        if var1 < 1
            return elem1
        end
    end
    return nil
end
