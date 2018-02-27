function rozklad(n)
  local czp = {}
  local i = 1;
  local p = math.sqrt(n)
  local k = 2
  
  while n > 1 and k <= p do
    while n % k == 0 do
      czp[i] = k;
      i = i + 1
      n = n / k
    end
    k = k + 1
  end
  
  if n > 1 then
    czp[i] = n
  end
  return czp
end

local czp = rozklad(630479850)
local i = 1;

while czp[i] do
  print(czp[i])
  i = i + 1
end