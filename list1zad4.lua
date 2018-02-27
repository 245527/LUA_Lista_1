function count(l, tab)
  local i = 1
  local j = 0
  
  while tab[i] do
    if tab[i] == l then
      j = j + 1
    end
    
    i = i + 1
  end
  
  if j == 0 then
    return nil
  end
  
  return j
end

print(count(3, {3, 1, 2, 3, 4, 5, 6, 3, 7, 8, 3, 3}))
print(count(0, {3, 1, 2, 3, 4, 5, 6, 3, 7, 8, 3, 3}))