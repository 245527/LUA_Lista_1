local function lreverser(source, target)
  buffer = {}
  
  if source == "" and target == "" then
    while true do
      line = io.read()

      if  line == "" then
        break
      end
      
      buffer[#buffer + 1] = line
    end

    for item = #buffer, 1, -1 do
      print (buffer[item])
    end
  end

  if source ~= "" then
    input = io.open(source, "r")

    while true do
      line = input:read()

      if line == nil then
        break
      end

      buffer[#buffer + 1] = line
    end
    
    input:close()

    if target == "" then
      for item = #buffer, 1, -1 do
        print (buffer[item])
      end
    else
      output = io.open(target, "w")

      for item = #buffer, 1, -1 do
        output:write(buffer[item])
        output:write("\n")
      end
      
      output:close()
    end
  end
end


if #arg == 0 then
  source = ""
  target = ""
end

if #arg == 1 then
  source = arg[1]
  target = ""
end

if #arg == 2 then
  source = arg[1]
  target = arg[2]
  
  local output = io.open(target ,"r")
  
  if output ~= nil then
    print("Overwrite (y/n)?")
    
    repeat
      target = ""
      char = io.read()
      
      if char == 'y' then
        target = arg[2]
        
        break
      end
        
    until char == "n"  
      
    io.close(output)
  end
end

lreverser(source, target)
--lreverser("C:\\Users\\Kuba\\Desktop\\input.txt", "C:\\Users\\Kuba\\Desktop\\output.txt")