

$morse_code = {
   "a": ".-",
   "b": "-...",
   "c": "_.-.",
   "d": "-..",
   "e": ".",
   "f": "..-.",
   "g": "--.",
   "h": "....",
   "i": "..",
   "j": ".---",
   "k": "-.-",
   "l": ".-..",
   "m": "--",
   "n": "-.",
   "o": "---",
   "p": ".--.",
   "q": "--.-",
   "r": ".-.",
   "s": "...",
   "t": "-",
   "u": "..-",
   "v": "...-",
   "w": ".--",
   "x": "-..-",
   "y": "-.--",
   "z": "--.."
}


def decode_char (char)
  $morse_code.each do |key, code|
    if code == char
      return key.upcase
    end
  end
end

decode_char("--")

def decode_word(word)
  arr = word.split(" ")
  arr_new = []
  for i in 0..arr.length - 1
  character = decode_char(arr[i])
  arr_new.push(character)
  end   
  print arr_new.join("")
  return arr_new
end

decode_word("-- -.--")

def decode(str)
  arr = str.split("   ")
  