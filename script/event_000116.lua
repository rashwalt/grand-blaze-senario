ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

is_event = false

for entry = 1, #partymember do
  if checkcomp(partymember[entry],37) == false and checkoffer(partymember[entry],37) == true and checkhaveitem(partymember[entry],3205,1) == false then
    is_event = true
  end
end

if checkquestoffer(37) == true and checkquestcomp(37) == false and battleresult() == 0 and is_event == true then
  text = [[戦いを終えると、ふと、何かがあるのに気がついた。

……これが、]] .. itemname(3205) .. [[だろうか？

]] .. getitemmsg(3205, 1)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],37) == false and checkoffer(partymember[entry],37) == true then
      getitem(partymember[entry], 3205, 1)
    end
  end

  writeline(text)
end
