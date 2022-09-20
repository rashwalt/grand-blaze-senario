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

if checkquestoffer(39) == true and checkquestcomp(39) == false and is_event == true then
  text = [[薄暗い森だった。
いつ敵が現れるかわからない。
……警戒しながら進むと、虎の咆吼が聞こえた！]]

  writeline(text)
  battle('161','',0,0,0,0)
else
  text = [[薄暗い森の中に何かがいる。
……モンスターだ！]]

  writeline(text)
  battle('','',-1,0,0,0)
end
