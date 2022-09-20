
if checkquestoffer(32) == false and checkquestcomp(32) == false then
  text = [[うろついている若い女性
「う～ん……困ったなぁ…」

うろうろと、合成ギルドの入り口近くをうろついている女性がいた。

うろついている若い女性
「あれがないと完成しない……。
　ん？」

こちらに気付くと、彼女が近付いてきた。

うろついている若い女性
「君、冒険者？
　私、見習い合成職人のエーファっていうの、よろしくね。
　……早速だけど、ちょっと頼まれてくれないかな？
　]] .. itemname(2509) .. [[が２つ、必要なんだよね……」

そう言って、意味ありげにこちらを見てくる。

見習い合成職人エーファ
「お願い！
　もってきてくれないかな？
　報酬は、現物だけど用意するから！」

バシッと両手を合わせて頼んできた。]]
  
  writeline(text)
  questoffer(32)
end

if checkquestoffer(32) == true and checkquestcomp(32) == false and checkitem(2509,2) == true then
  text = [[見習い合成職人エーファ
「あっ、持ってきてくれたんだね！
　ありがとう！！
　じゃ、ちょっと待ってて……」

受け取った]] .. itemname(2509) .. [[を手に、彼女は何かを作り始めた。
……数分後。

見習い合成職人エーファ
「できたよ！
　はい、これ……！」

]] .. itemgetmsg(553,1)

  writeline(text)
  questcomp(32)
  useitem(2509,2)
end

if checkorg(2) then
  text = [[現在の裁縫テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(0) .. [[

]]
  
  writeline(text)
end
if checkorg(3) then
  text = [[現在の木工テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(1) .. [[

]]
  
  writeline(text)
end
if checkorg(4) then
  text = [[現在の機械テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(2) .. [[

]]
  
  writeline(text)
end
if checkorg(5) then
  text = [[現在の鍛冶テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(3) .. [[

]]
  
  writeline(text)
end
if checkorg(6) then
  text = [[現在の細工テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(4) .. [[

]]
  
  writeline(text)
end
if checkorg(7) then
  text = [[現在の錬金テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(5) .. [[

]]
  
  writeline(text)
end
if checkorg(8) then
  text = [[現在の調理テクニックで合成可能なアイテムは次の通りです……。

]] .. recipelist(6) .. [[

]]
  
  writeline(text)
end
