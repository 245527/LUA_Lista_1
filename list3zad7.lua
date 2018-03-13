--*********************************************************
local f0name = "C:\\Users\\Kuba\\Desktop\\LuaForWindows_v5.1.4-46.exe"
local f0 = assert(io.open(f0name, 'rb'))


local f1name = "C:\\Users\\Kuba\\Desktop\\big1.bin"
local f1 = io.open(f1name, "w")

local x = os.clock ()
--print (x)
local s = 0
local i = 1
local block = 8

repeat
  local bytes = f0:read(block)
  
  if not bytes then
    break
  end
  
  f1:write(bytes)
  s = s + i
until not bytes

print (string.format(os.clock () - x))

f0:close()
f1:close()
--*********************************************************


--*********************************************************
local f0name = "C:\\Users\\Kuba\\Desktop\\LuaForWindows_v5.1.4-46.exe"
local f0 = assert(io.open(f0name, 'rb'))

local f2name = "C:\\Users\\Kuba\\Desktop\\big2.bin"
local f2 = io.open(f2name, "w")

local x = os.clock ()
--print (x)
local s = 0
local i = 1
local block = 8*1024

repeat
  local bytes = f0:read(block)
  
  if not bytes then
    break
  end
  
  f2:write(bytes)
  s = s + i
until not bytes

print (string.format(os.clock () - x))

f0:close()
f2:close()
--*********************************************************

--*********************************************************
local f0name_ = "C:\\Users\\Kuba\\Desktop\\big.txt"
local f0_ = assert(io.open(f0name_, 'rb'))

local f3name = "C:\\Users\\Kuba\\Desktop\\big3.txt"
local f3 = io.open(f3name, "w")

local x = os.clock ()
--print (x)
local s = 0
local i = 1

while true do
  local line = f0_:read()
  
  if line == nil then
    break
  end
  
  f3:write(line)
  f3:write("\n")
end

print (string.format(os.clock () - x))

f0_:close()
f3:close()
--*********************************************************