MORSE_CODE = {
  a: '.-',
  b: '-...',
  c: '_.-.',
  d: '-..',
  e: '.',
  f: '..-.',
  g: '--.',
  h: '....',
  i: '..',
  j: '.---',
  k: '-.-',
  l: '.-..',
  m: '--',
  n: '-.',
  o: '---',
  p: '.--.',
  q: '--.-',
  r: '.-.',
  s: '...',
  t: '-',
  u: '..-',
  v: '...-',
  w: '.--',
  x: '-..-',
  y: '-.--',
  z: '--..'
}.freeze

def decode_char(char)
  MORSE_CODE.each do |key, code|
    return key.upcase if code == char
  end
end

decode_char('--')

def decode_word(word)
  arr = word.split
  arr_new = []
  (0..arr.length - 1).each do |i|
    character = decode_char(arr[i])
    arr_new.push(character)
  end
  arr_new
end

decode_word('-- -.--')

def decode(str)
  arr = str.split('   ')
  arr_new = []
  (0..arr.length - 1).each do |i|
    word = decode_word(arr[i])
    arr_new.push(word.join)
  end
  print arr_new.join(' ')
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')


