ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

is_event = false

for entry = 1, #partymember do
  if checkcomp(partymember[entry],39) == false and checkoffer(partymember[entry],39) == true and checkhavekey(partymember[entry],78) == false then
    is_event = true
  end
end

if checkquestoffer(39) == true and checkquestcomp(39) == false and battleresult() == 0 and is_event == true then
  text = [[……なんとか倒した。
倒した証を持ち帰らねばなるまい。

]] .. keyitemgetmsg(78)

  writeline(text)
  tarent(26)
end
