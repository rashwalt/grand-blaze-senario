ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(49) == true and checkquestcomp(49) == false and battleresult() == 0 and checkeventflag('渓谷に咲く花',1) == false then
  text = [[この道の先に、]] .. itemname(3211) .. [[があるのだろうか？

目の前には、]] .. mark(101) .. [[が広がっている…。]]

  writeline(text)
  eventflag('渓谷に咲く花',1,true)
end
