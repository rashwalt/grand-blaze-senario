ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(5) then
  text = [[通りに、犬の吠える声が響き渡る。
ジョーゼフの声だろうか？
通りを進んでいくと、道ばたにあるイチョウの木に引っかかった麦わら帽子に向けて、ジョーゼフは吠えていた。
時折、なんとかのぼろうとしている。
麦わら帽子は、とてもかわいらしい赤いリボンがついていた。

「ジョーゼフー！」

マリリンが駆け寄ってきた。

少女マリリン
「ジョーゼフ……？
　ひょっとして、わたしの帽子を取ろうとしてくれていたの？
　おじいちゃんにもらった大切な帽子だけど……あれじゃ取れないよ……」

長い棒があれば取れそうだ。
だが、大人ならば、背伸びしてもとることはできるかもしれない。
……なんとか、とれた。

少女マリリン
「あ、ありがとう、冒険者さん！
　あ、あの……これ、お礼です……。
　こんなのしかないけど……使ってください！」

無事に、ジョーゼフも探しだし、少女の帽子もとることができた。
上々の依頼達成だろう……。

]] .. getitemmsg(7000, 1)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],5) == false then
      getitem(partymember[entry],7000,1)
    end
  end

  writeline(text)
  questcomp(5)
  tarent(6)
else
  text = [[工場へ向かうの人通りはまばらだった。
朝早ければ工場へ向かう人々が多いのだろうが、今の時間帯ではあまり人通りは多くなかった。
この通りからは、工場の煙突から立ち上る煙が見えている。]]

  writeline(text)
end