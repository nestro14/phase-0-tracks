#Encrypt
#1. Determine length of string
#2. Establish count based on length
#3. For count advance each letter by 1
#4. Return output

def encrypt(string)
  count = string.length
  str_index = 0
  until count == 0
    if string[str_index] == 'z'
      string[str_index] = 'a'
    else
      string[str_index] = string[str_index].next!
    end
    count -= 1
    str_index += 1
  end
  puts string
end

encrypt("abc")
encrypt("zed")

#Decrypt
#1. Determine length of string
#2. Establish count based on length
#3. Set range of a-z to a variable to reference
#4. Use count to loop through string, referencing a-z range to shift one character backward
#.5 Return output

def decrypt(string)
  count = string.length
  str_index = 0
  alpha_char = 'abcdefghijklmnopqrstuvwxyz'
  until count == 0
    string[str_index] = alpha_char[alpha_char.index(string[str_index]) - 1]
    count -= 1
    str_index += 1
  end
  puts string
end

decrypt("bcd")
decrypt("afe")