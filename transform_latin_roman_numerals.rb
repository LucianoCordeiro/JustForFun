def transform_to_roman(latin_numeral)

  values = {
    '0' => ['', '', '', ''],
    '1' => ['M', 'C', 'X', 'I'],
    '2' => ['MM', 'CC', 'XX', 'II'],
    '3' => ['MMM', 'CCC', 'XXX', 'III'],
    '4' => ['CD', 'XL', 'IV'],
    '5' => ['D', 'L', 'V'],
    '6' => ['DC', 'LX', 'VI'],
    '7' => ['DCC', 'LXX', 'VII'],
    '8' => ['DCCC', 'LXXX', 'VIII'],
    '9' => ['CM', 'XC', 'IX']
  }

  i = -1
  latin_numeral = latin_numeral.to_s
  roman_numeral = ''
  while i >= latin_numeral.size * (-1)
    roman_numeral.prepend values[latin_numeral[i]][i]
    i -= 1
  end
  roman_numeral
end

def transform_to_latin(roman_numeral)

  values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  subtract_when = {
    'I' => ['V', 'X'],
    'X' => ['L', 'C'],
    'C' => ['D', 'M']
  }

  i, sum = 0, 0
  while i < roman_numeral.size
    if subtract_when[roman_numeral[i]]&.include?(roman_numeral[i+1])
      sum -= values[roman_numeral[i]]
    else 
      sum += values[roman_numeral[i]]
    end
    i += 1
  end
  sum
end
