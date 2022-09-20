ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(28) and battleresult() == 0 then
  text = [[目の前に現れた魔物は倒した。
だが、まだ他にもいる気配がする。
……だが、ウワサは本当だったのだ。
この屋敷には、霊が住み着いている。

屋敷から出ると、入り口にハンニバルが待っていた。

不動産屋ハンニバル
「どうだった？
　……なるほど。
　ほう、ウワサは本当だったか。
　やれやれ、しかも根本的な原因がわからないと来ている。
　仕方ない……ともかく、ウワサが本当であったこと、確かめてくれて感謝する」

そう言って、ハンニバルは軽く、頭を下げた。

不動産屋ハンニバル
「さて、報酬を支払おう」

]] .. getmoneymsg(1000) .. [[

不動産屋ハンニバル
「本当は駆除を依頼したいのだが……まあ、専門家に頼むとするさ。
　ああ、カギはそのまま持っていてくれて構わんよ。
　どうせしばらくは売れないだろうしな。
　時折来て、魔物を追い払ってくれるだけで十分だ。
　報酬は、出せないがね。
　それでは、失礼する」

そう言って、ハンニバルは雑踏の中へと消えていった。]]

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],28) == false then
      getmoneys(partymember[entry], 1000)
    end
  end
  
  writeline(text)
  questcomp(28)
end
