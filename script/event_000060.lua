ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(21) and battleresult() == 0 then
  text = [[守護者がただの砂となって崩れていく。
……脅威は去った。

冒険家フレデリック
「ふぅ……。
　さて、帰ろうか」

数刻後。

酒場に戻ってきた。
酔った男達が、フレデリックに声をかける。
手を振って軽くそれに応えつつ、フレデリックは言った。

冒険家フレデリック
「]] .. player('君','君たち') .. [[のおかげで、エキサイティングな冒険ができたよ。
　礼を言おう。
　それから、ふむ、そうだな、こいつをあげよう。
　私の帽子のレプリカだ」

フレデリックが取り出した帽子が、うっすらと輝いた。
……！

何か、新たな力を得られそうだ。

]] .. installgetmsg(9) .. [[

]] .. getitemmsg(7003,1) .. [[

にっこりと笑うと、そのまま、フレデリックは男達と酒を飲み始めた。]]

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],21) == false then
      getitem(partymember[entry],7003,1)
    end
  end
  
  writeline(text)
  questcomp(21)
  tarent(12)
elseif checkquestoffer(21) and battleresult() > 0 then
  text = [[気がつくと、そこは名も無き小さな村の酒場の前だった。
……もう一度、準備を整えてここへ、出直した方がいいだろう……。]]
  
  writeline(text)
end
