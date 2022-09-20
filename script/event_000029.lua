ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

function no_mission()
  text = [[グエスェイス水路の前だ。
今日も、管理員のルドルフが立っている。
子供たちが勝手に入らないよう見張っているのだろうか。]]

  writeline(text)
end

if checkquestoffer(6) == false and checkquestcomp(6) == false then
  text = [[ファーネルド連邦の首都ファーネルの地下には、生活用水を確保するために建造された巨大な水路が広がっている。
その水路の入り口前に、一人の男性が立っていた。

水路管理員ルドルフ
「おっ、冒険者かい？
　丁度いい、頼みがあるんだ。
　この先の水路にモンスターが住み着いていてな、定期的に冒険者に駆除をお願いしてるんだ。
　いっちょ、やってみないかい？
　モンスター討伐をした証拠に、]] .. itemname(3200) .. [[を３つ持ってきてくれれば報酬を支払うよ。
　これが、水路へ入るためのカギだ。
　再度確認しておくが、場所は]] .. mark(21) .. [[だ。
　よろしく。じゃ、まってるからな」

]] .. keyitemgetmsg(66)
  
  writeline(text)
  questoffer(6)
elseif checkquestoffer(6) == true and checkquestcomp(6) == false and checkitem(3200,3) == true then
  text = [[水路の前へ戻ると、こちらを見つけたルドルフが駆け寄ってきた。

水路管理員ルドルフ
「その顔は、終わったようだな。
　どれどれ……確かに、]] .. itemname(3200) ..[[だな。
　助かったよ、これが報酬だ。
　受け取ってくれ。
　ああ、それから、今後は自発的に掃除して持ってきてくれれば報酬を出すよ」

]] .. getmoneymsg(260)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],6) == false then
      getmoneys(partymember[entry],260)
    else
      getmoneys(partymember[entry],200)
    end
  end
  
  useitem(3200,3)
  writeline(text)
  questcomp(6)
  tarent(7)
elseif checkquestcomp(6) == true and checkitem(3200,3) == true then
  text = [[グエスェイス水路の前だ。
今日も、管理員のルドルフが立っている。

水路管理員ルドルフ
「お、掃除してくれたみたいだな。
　助かったよ、これが報酬だ。
　受け取ってくれ」

]] .. getmoneymsg(200)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],6) == true then
      getmoneys(partymember[entry],200)
    end
  end
  
  useitem(3200,3)
  writeline(text)
  tarent(7)
else
  no_mission()
end
