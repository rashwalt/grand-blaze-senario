if checkquestoffer(30) == true and checkquestcomp(30) == false and checkeventflag('二つの道',1) == true then
  text = [[？？？
「いやぁ、まさか、本当に来て頂けるとは思いませんでしたよ。
　何事も試してみるものですねぇ」

突如聞こえた声は、どこか、喜びに打ち震えているようだった。
振り向くと、いつの間にか、そこに人が立っている。
さっきまで、この廃村には自分たち以外、誰もいなかったというのに。

？？？
「おっと、これは失礼。
　つい、嬉しさのあまり名乗るのを忘れておりました。
　はい、わたくしが、あの手紙の差出人です。
　ルイスとお呼びいただければ大変喜ばしいですね」

ルイスと名乗った男は、しつこい程丁寧に一礼した。
どこか人を小馬鹿にしたような物言いだ。
しかし、何かを切実に訴えるような最初の手紙も、この男が差出人なのだろうか……？

剣士ルイス
「そうですねぇ。
　わたくしは、是非ともそちらの実力を知りたいですねぇ。
　ふむ。こうしましょう。
　わたくし、そちらをお殺しになることに致します。
　いいですね？　はい、契約成立」

ルイスはそういって、腰に差したレイピアを構えた。
殺気が溢れ出してくる……！]]

  writeline(text)
  battle('120','',0,0,0,0)
else
  text = [[寂れた村に人影はない。
不気味な静けさがあたりを支配している…。]]

  writeline(text)
end
