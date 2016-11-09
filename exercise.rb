class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub!(/\b[A-Z]{1}[a-z]{4,}\b/, 'Marklar')
    str.gsub!(/\b[a-z]{5,}\b/, "marklar")
    return str
    # TODO: Implement this method
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    f = [0,1]
    for i in 0..nth-2
      f << f[-2] + f[-1]
    end

    sum  = 0
    f.each { |n| sum += n if n.even? }
    return sum
  end

end
