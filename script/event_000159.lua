if checkquestoffer(45) == true and checkquestcomp(45) == false and checkeventflag('マチュアとお金',1) == false then
  text = [[工場へ向かう道…。
そこに、ファルートの女性、マチュアはいた。
工場へ向かう人々を好奇の視線で眺めている。

きょろきょろするマチュア
「や～っぱり、都会は違うわ～」

話しかけると、彼女は今度はこちらを興味深げに頭の上から足の先まで見た。

きょろきょろするマチュア
「う～ん、やっぱ都会ね！
　あなたみたいな人がいるなんて……え？
　]] .. itemname(3208) .. [[を知らないかって？
　あ～、あれね、うんあれは……ごめん、私もってないの。
　もう他の人に渡しちゃった。
　カイツって人がいるんだけど、彼にあげちゃったわよ。
　確か、今は]] .. markname(41) .. [[にいるって話よ。
　ただ、]] .. itemname(3104) .. [[と交換したから、これを渡さないと返してくれないと思うわ。
　そうねぇ……2000」

きょとんとすると、マチュアは軽くため息をついた。

きょろきょろするマチュア
「もう、にっぶいわねぇ。
　2000ギムル持ってきてくれたら、]] .. itemname(3104) .. [[をあなたにあげるわよ」

2000ギムルを用意して、もう一度ここへ来る必要があるようだ。]]
  
  writeline(text)
  eventflag('マチュアとお金',1,true)
elseif checkquestoffer(45) == true and checkquestcomp(45) == false and getmoney() >= 2000 and checkeventflag('マチュアとお金',1) == true then
  text = [[きょろきょろするマチュア
「あ、2000ギムル用意してくれたの？
　助かるわ～。
　はい、これ」

2000ギムルを支払った。
]] .. itemgetmsg(3104,1) .. [[

きょろきょろするマチュア
「それじゃ、ばいば～い」

次は]] .. markname(41) .. [[にいるカイツと会う必要があるだろう。]]
  
  writeline(text)
  usemoney(2000)
elseif checkquestcomp(45) == true and checkhaveitem(3104,1) == false and checkeventflag('マチュアとお金',1) == true then
  text = [[きょろきょろするマチュア
「あ、あなた！」

マチュアだ。
こちらを探していた様子だ。

きょろきょろするマチュア
「はい、これ。
　あなたに売ったのに、なんか戻って来ちゃったのよ。
　だから、あなたに返すわ。
　じゃあね」

]] .. itemgetmsg(3104,1)
  
  writeline(text)
  eventflag('マチュアとお金',2,true)
end