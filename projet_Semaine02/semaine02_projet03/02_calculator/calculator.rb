
def add(n1, n2)
  return n1 + n2
end

def subtract(n1, n2)
  return n1 - n2
end

def sum(n)
  sum = 0
  if n.is_a?(Array)
    n.each { |x| sum = sum + x }
  end
  return sum
 end







































