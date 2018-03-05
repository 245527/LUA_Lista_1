local function moveinto(tab1, i1, j1, tab2, i2)
  t = {}
  
  
  if i2 == nil then
    i2 = tab2
    tab2 = tab1
  end
  
  
  i = 1;
  while i < i2 do
    t[i] = tab2[i]
    
    i = i + 1
  end
  k = i
  
  
  for j = i1, j1 do
    t[i] = tab1[j]
    
    i = i + 1
  end
  
  
  while i <= #tab2 + (j1 - i1 + 1) do
    t[i] = tab2[k]
    
    i = i + 1
    k = k + 1
  end
  
  
  for i = 1, #tab2 + (j1 - i1 + 1) do
    print(t[i])
  end
  
  return t
end

tab2 = {1, nil, 3, 7, nil, 8}
moveinto({3 , 4, nil , 6, 7}, 2, 4, tab2 , 4)
print('---------------------------')
moveinto({3 , 4, nil , 6, 7}, 2, 4, 4)
