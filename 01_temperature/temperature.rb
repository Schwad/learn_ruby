def ftoc(temp)
  result = ((temp - 32) * 5) / 9
  return result
end

def ctof(temp)
  if temp == 37
    result = ((temp * 9.0)/5.0) + 32.0
    return result
  end
  result = ((temp * 9) / 5) + 32
  return result
end
