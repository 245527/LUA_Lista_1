local function map(tab, func)
  local ftab = {}
  local i = 1
  
  while tab[i] do
    ftab[i] = func(tab[i])
    i = i + 1
  end
  
  return ftab
end


local function increment(n)
  return n + 1
end

local tab = {1, 2, 3}
local ftab = map(tab, increment)
local i = 1

while ftab[i] do
  print(ftab[i])
  i = i + 1
end