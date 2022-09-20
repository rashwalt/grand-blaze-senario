ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(27) and checkquestcomp(27) == false and battleresult() == 0 then
  text = [[メルゴの弟子フランク
「どうやら、こいつらはたまに、海の近くで出没する亜種みたいだな。
　でも、こんなので黄金のドリルカジキなんて手にはいるのだろうか……？
　ともかく、今日は助かったよ。
　少ないけど、また今度の機会にでも、師匠の料理、手伝ってくれよ！」

]] .. getmoneymsg(760)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],27) == false then
      getmoneys(partymember[entry],760)
    end
  end
  
  writeline(text)
  questcomp(27)
end
