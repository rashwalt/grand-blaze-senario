ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(51) == true and checkquestcomp(51) == false and battleresult() == 0 then
  text = [[ボーン・コレクターを倒した。
ブレナンから受け取った]] .. keyitemname(276) .. [[に、骸骨のような模様が浮かび上がった。
]] .. keyitemname(276) .. [[が認識したようだ。
あとは、]] .. mark(83) .. [[に報告に戻るだけだ。]]

  writeline(text)
  eventflag('ボーン討伐',1,false)
end
