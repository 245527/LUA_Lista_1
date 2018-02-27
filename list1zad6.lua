function fibn(n)
  local fibtab = {0, 1}
  for i = 3, n do
    fibtab[i] = fibtab[i - 2] + fibtab[i - 1]
  end
  
  return fibtab[n]
end

print(fibn(13))