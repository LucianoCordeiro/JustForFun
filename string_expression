def numeric? expression
  expression.match('\A\d+\Z')
end

def calculate(expression)
  expression = expression.gsub(' ', '')
  return expression.to_i if numeric? expression
  
  terms = expression.split('+')
  
  if terms.size > 1
    sum = calculate(terms.shift)
    terms.each do |term|
      sum += calculate(term)
    end
    return sum
  end

  terms = expression.split('-')
  
  if terms.size > 1
    subtraction = calculate(terms.shift)
    terms.each do |term|
      subtraction -= calculate(term)
    end
    return subtraction
  end

  terms = expression.split('x')
  if terms.size > 1
    puts expression
    multiplication = calculate(terms.shift)
    puts multiplication
    terms.each do |term|
      multiplication *= calculate(term)
    end
    return multiplication
  end
  
  
  
  
  puts "ERROR"
  return 10000
end




calculate "5+ 3 x 2-1"
