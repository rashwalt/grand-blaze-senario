if checkquestoffer(45) == true and checkquestcomp(45) == false and checkitem(3104,1) == true and checkeventflag('カイツと銘酒',1) == false then
  text = [[坑道跡に座り込んでいるバルタンがいる。
彼が、カイツなのだろうか？

座り込んでいるバルタン
「んー？
　おや、これは珍しいですね。
　あなたも、この坑道跡に鉱石を見つけにいらしたのですか？」

事情を説明すると彼は頷いたようだった。

座り込んでいるカイツ
「あ～はいはい。
　マチュアさんのですね。
　わかりました。では……」

]]

  if checkitem(3207,1) == true then
    text = text .. [[突然、彼の表情が変わる。

座り込んでいるカイツ
「もしかして……あなた、あの銘酒と名高い]] .. itemname(3207) .. [[をお持ちなのですか！？
　す、すごい……是非、是非！
　それを譲ってください！
　譲ってくれるなら、オマケもつけますから！」

]]
  end

  text = text .. itemgetmsg(3208,1)
  
  writeline(text)
  eventflag('カイツと銘酒',1,true)
  useitem(3104,1)
elseif checkquestoffer(45) == true and checkquestcomp(45) == false and checkitem(3207,1) == true and checkeventflag('カイツと銘酒',1) == true then
  text = [[座り込んでいるカイツ
「おお、譲ってくださるのですね！
　ありがとうございます！
　これをどうぞ！」

]] .. itemgetmsg(3209,1)
  
  writeline(text)
  useitem(3207,1)
end