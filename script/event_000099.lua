if checkquestoffer(34) == false and checkquestcomp(34) == false and checkfames('ファーネル',10) == true then
  text = [[その女性は、細長いしっぽをゆらゆらとさせた、半分獣化したライカンスだった。

半獣化した女性
「あらぁん、あなた、いい身体じゃない～？
　もしかして……連邦で最近名前の売れてきた]] .. player('name','name') .. [[ちゃん？
　ちょっと最近カバンが窮屈になっていないかしらん？
　ふふ、提案があるの。
　このあたし、ロージーが、あなたのカバン、大きくしてあげる。
　でも……」

言って、ぐぐっと近寄ってきた。

妖艶なロージー
「そのた・め・に・は……。
　材料が必要なのよねぇ……]] .. itemname(2506) .. [[と、]] .. itemname(2403) .. [[、それから…]] .. itemname(2639) .. [[に]] .. itemname(2709) .. [[もよ。
　これらを持ってきてくれたら、あなたのカバン……大きくしてあげる。
　大きくしたいでしょ……？」]]
  
  writeline(text)
  questoffer(34)
elseif checkquestoffer(34) == true and checkquestcomp(34) == false and checkitem(2506,1) == true and checkitem(2403,1) == true and checkitem(2639,1) == true and checkitem(2709,1) == true then
  text = [[妖艶なロージー
「……うふん、もってきたのね。
　いいわ、ちょっと待ってなさい……。
　…………。
　……ほら、できたわよ」

]] .. bagupmsg(55)

  writeline(text)
  questcomp(34)
  useitem(2506,1)
  useitem(2403,1)
  useitem(2639,1)
  useitem(2709,1)
  tarent(19)
elseif checkquestoffer(35) == false and checkquestcomp(35) == false and checkfames('ファーネル',10) == true and checkquestcomp(34) == true then
  text = [[ロージーがこちらに近寄ってきた。

妖艶なロージー
「まだ、大きくしたいの……？
　うふふ、いいわ……。
　それじゃあ、]] .. itemname(2512) .. [[と、]] .. itemname(2410) .. [[、それから…]] .. itemname(2841) .. [[に]] .. itemname(2713) .. [[を持ってきてちょうだい…。
　大きくしてあ・げ・る&hearts;」]]
  
  writeline(text)
  questoffer(35)
elseif checkquestoffer(35) == true and checkquestcomp(35) == false and checkitem(2512,1) == true and checkitem(2410,1) == true and checkitem(2841,1) == true and checkitem(2713,1) == true then
  text = [[妖艶なロージー
「……うふふん、もってきたのね…。
　いいわ、ちょっと待ってなさい……。
　……………………。
　……ほら、できたわよ」

]] .. bagupmsg(60)

  writeline(text)
  questcomp(35)
  useitem(2512,1)
  useitem(2410,1)
  useitem(2841,1)
  useitem(2713,1)
  tarent(20)
end

if checkquestoffer(48) == true and checkquestcomp(48) == false then
  text = [[前髪を立てた青年
「ああ、見たよ。
　あのぼろぼろになってた地図だろ？」

幾人かに聞いてやっと得た情報だった。

前髪を立てた青年
「確か、]] .. markname(55) .. [[と]] .. markname(99) .. [[で見た記憶があるよ。
　あれって、あんたのものかい？
　ゴミかと思っちまったよ」

手がかりを得た。
地図を探しに行こう。]]

  writeline(text)
  eventflag('キーマの地図情報',1,true)
end
