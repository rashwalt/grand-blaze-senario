
if checkquestoffer(24) == false and checkquestcomp(24) == false then
  text = [[「あ、あんた！」

いきなり、両肩を掴まれた。
正面に、こちらの肩を掴む一人の男性。

ライカンスなのだろうか、後ろに尻尾が揺れている。
どこか、哀れみを感じさせる揺れ方だったが。

ライカンスの男性
「なあ、あんた、冒険者だろ！？
　そ、そうだよな、こんなところで武器なんか持ってるんだもんな。
　あ、あのさ、金は出すから、]] .. itemname(2608) .. [[を２枚、持ってきてくれないか！？
　いや、実はさ、最近、よく眠れなくて……眠ると恐ろしい影が襲ってくるんだよ。
　だから、呪い師に頼んだら、]] .. itemname(2608) .. [[で焚いたお香がよく効くって……。
　それじゃ、頼む、な？
　ああ、そうだ、名前、名乗ってなかったっけ……ヴァーシャっていうんだ。
　何度でも買い取るから、頼むよ、ホント」]]
  
  writeline(text)
  questoffer(24)
end

if (checkquestoffer(24) == true or checkquestcomp(24) == true) and checkitem(2608,2) == true then
  text = [[眠れぬ男ヴァーシャ
「おお、あんた！」

こちらを見つけると、素早く近付いてきた。
さすが、ライカンス、というべき身のこなしだろうか？

眠れぬ男ヴァーシャ
「おお、持ってきてくれたんだな！
　助かった……！
　ああ、まだまだ持ってきてくれたら、買い取るからな。
　ありがとう！ありがとう！！」

]] .. moneygetmsg(360)

  writeline(text)
  if checkquestoffer(24) == true then
    questcomp(24)
  end
  useitem(2608,2)
  tarent(15)
end


