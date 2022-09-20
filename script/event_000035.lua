ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(6) == true and checkitem(3200,3) == true and battleresult() == 0 then
  move(20)

  text = [[～ ]] .. markname(20) .. [[ ～

水路の前へ戻ると、こちらを見つけたルドルフが駆け寄ってきた。

水路管理員ルドルフ
「その顔は、終わったようだな。
　どれどれ……確かに、]] .. itemname(3200) ..[[だな。
　助かったよ、これが報酬だ。
　受け取ってくれ」

]] .. getmoneymsg(260)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],6) == false then
      getmoneys(partymember[entry],260)
    end
  end
  
  useitem(3200,3)
  writeline(text)
  questcomp(6)
  tarent(7)
end