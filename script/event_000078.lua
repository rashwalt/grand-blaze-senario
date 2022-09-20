
if checkquestoffer(29) and battleresult() == 0 and checkeventflag('妖魔討伐',0) then
  text = [[妖魔を倒し、その結果をカメラにおさめる。
これで、証拠になるだろう。
まだ実力に自信があるのならば、もう一度ここへ来るといい。]]

  writeline(text)
  eventflag('妖魔討伐',1,false)
elseif checkquestoffer(29) and battleresult() == 0 and checkeventflag('妖魔討伐',1) then
  text = [[妖魔を倒し、その結果をカメラにおさめる。
これで、証拠になるだろう。
まだまだ実力に自信があるのならば、もう一度ここへ来るといい。]]

  writeline(text)
  eventflag('妖魔討伐',2,false)
elseif checkquestoffer(29) and battleresult() == 0 and checkeventflag('妖魔討伐',2) then
  text = [[妖魔を倒し、その結果をカメラにおさめる。
これで、証拠になるだろう。

ふと、周囲から、何も聞こえなくなっていることに気づく。
今まで聞こえていた虫の声が、まったく聞こえない。
どこか、薄ら寒いものを感じる。
このまま、ここでさらに妖魔を探すのは危険かもしれない。
すでに十分な量をカメラにおさめた。
もう帰っても大丈夫だろう。

だが、それでも探すというのであれば、相応の覚悟を決める必要がある。]]

  writeline(text)
  eventflag('妖魔討伐',3,false)
elseif checkquestoffer(29) and battleresult() == 0 and checkeventflag('妖魔討伐',3) then
  text = [[なんとか倒した。
もう、妖魔たちはほとんどいないようだ。
いるとしても、先ほどの存在とは違い、普通の妖魔だろう。

さあ、カメラをもって、ギルドへ報告に行こう。]]

  writeline(text)
  eventflag('妖魔討伐',4,false)
end
