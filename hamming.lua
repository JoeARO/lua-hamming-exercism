local hamming = {}

function hamming.compute(strand1, strand2)
  local lendiff = math.abs(string.len(strand1) - string.len(strand2))
  local ham = 0
  
  for i = 1, #strand1 do
    if lendiff ~= 0 then return (ham - lendiff) end
    if (strand1:sub(i, i) == strand2:sub(i, i)) then
      ham = ham
    else
      ham = (ham + 1)
    end
  end
  return ham
end

return hamming