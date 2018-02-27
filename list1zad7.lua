function maks(a, b, c)
  if ((a or b) or c) == nil then
    return nil
  end
  
  local m = nil
  
  if not (a == nil or b == nil) then
    m = math.max(a, b)
  elseif a == nil then
    m = b
  else
    m = a
  end
  
  if m == nil then
    return c
  end
  
  if not (c == nil) then
    return math.max(m, c)
  end
  
  return m
end

print(maks(nil, nil, nil))
print(maks(nil, nil, 1))
print(maks(nil, 2, nil))
print(maks(nil, 4, 3))
print(maks(5, nil, nil))
print(maks(7, nil, 6))
print(maks(9, 8, nil))
print(maks(11, 12, 10))