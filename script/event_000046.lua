if checkquestoffer(16) and (checkeventflag('隊商護衛任務',9) or checkeventflag('隊商護衛任務',10)) then
  text = [[ネルヴァリア王国の月夜の街ツェンブルグ。
ファーネルド連邦とネルヴァリア王国を繋ぐ連日連夜、夜となっている街だ。

商人ホランド
「ふぅ。やっとたどり着いたな。
　ありがとう。
　あとは、ここで少し商売をしてから、次の街へ向かうことにするよ。
　]] .. player('きみ','きみたち') .. [[には世話になったね。
　それじゃ、早速報酬を……」

ホランドがごそごそと報酬を取り出そうとした時、突如、街の入り口から悲鳴が上がった。

商人ホランド
「なんだ……？
　あっ、あれは……！？」

入り口から警備兵達をなぎ倒し、何か黒い塊がこちらに突撃してくる。
いや、よく見ると、それは人だった。

黒き人影
「オオオォォォ……」

声なき声が聞こえた。

商人ホランド
「こいつは……なんなんだ！？」

黒き人影
「コロス……コロスコロスコロスゥゥゥゥーッ！！」

黒き人影が襲いかかってくる…！]]
  
  writeline(text)
  battle('53','54',0,0,0,0)
  eventflag('隊商護衛任務',10,false)
else
  text = [[ネルヴァリア王国の月夜の街ツェンブルグ。
ファーネルド連邦とネルヴァリア王国を繋ぐ連日連夜、夜となっている街だ。]]

  writeline(text)
end