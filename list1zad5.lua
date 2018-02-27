function maks(n)
  local maks = n[1]
  local i = 2
  
  while n[i] do
    if n[i - 1] < n[i] then
      maks = n[i]
    end
    
    i = i + 1
  end

  
  return maks
end

print(maks({1, 5, 3}))
print(maks({}))