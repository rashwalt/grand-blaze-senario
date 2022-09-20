ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(49) == true and checkquestcomp(49) == false and battleresult() == 0 and checkeventflag('渓谷に咲く花',1) == true then
  text = [[丘の上に、小さな白い花を見つけた。
花のいい香りがあたりに漂っている。
そっと、花を摘んだ。

]] ..  itemgetmsg(3211,1)

  writeline(text)
end
