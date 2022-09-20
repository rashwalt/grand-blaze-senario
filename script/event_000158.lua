if checkquestoffer(45) == true and checkquestcomp(45) == false and checkitem(3208,1) == false then
  text = [[羊飼いが自分たちの羊を巧みに誘導していく。
モンスターとして襲ってくる羊ではなく、飼育用の羊たちを飼う人たちだ。

その中に、いらいらとした様子のドラクォがいた。
彼なのだろう、ロッドさんが言っていた交換相手…オズマは。

いらいらしているドラクォの男
「なんだ、あんたは……」

ロッドさんから依頼された内容を話すと、彼は軽く溜息をついたようだった。

いらいらの男オズマ
「あのじいさんか……じいさんは元気かい？
　まあ、聞かなくてもわかるがな。
　あんたが欲しいのはこいつだろ？」

そう言って、オズマは紙切れを見せた。

いらいらの男オズマ
「悪いが、こいつをただでやるわけにはいかねぇ。]]

  if checkitem(3207,1) == true then
    text = text .. [[
　……ん？　]] .. itemname(3207) .. [[がある？
　すまないが、俺は酒は飲めなくてな。]]
  end

  text = text .. [[
　そうだ……]] .. markname(19) .. [[にいるマチュアから]] .. itemname(3208) .. [[を取り戻してくれたら、こいつを渡そう」

どうやら、マチュアなる人物に会う必要がありそうだ。]]
  
  writeline(text)
elseif checkquestoffer(45) == true and checkquestcomp(45) == false and checkitem(3208,1) == true then
  text = [[いらいらの男オズマ
「取り戻してくれたか。
　それじゃ、ほらよ」

]] .. keyitemgetmsg(273)
  
  writeline(text)
  useitem(3208,1)
end