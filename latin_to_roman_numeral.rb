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
