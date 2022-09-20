ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',1) == true then
  text = [[ツェンブルグの警備隊の詰所だ。
……だが、いつもの様子と違うようだった。

慌ただしく、警備隊員達が駆け回っている。

丁度、近くを通りがかった警備隊員を呼び止める。

駆け回る警備隊員
「なんだ！？
　冒険者か……。
　今こっちは忙しいんだ、後にしてくれ！」

立ち去ろうとする警備隊員に酒場であったことを話す。
すると、彼の顔色が変わった。

駆け回る警備隊員
「な……んだと……？
　それは本当か！？
　まずい、まずいな……あっ、プラート警部！」

丁度、出て行こうとしたひとりの警備隊員を呼び止めた。
だが、今まで目の前で話していた警備隊員とは制服が違うようだったが。

警部プラート
「ン……どうした？」

警備隊員がプラートに簡単に説明する。
すると、プラートの顔色も変わった。

警部プラート
「わかった。
　]] .. player('君','君たち') .. [[の詳しい話を聞かせてくれ。
　……ふむ、ふむ。なるほど。
　その酒場には警備隊員を回そう。
　そうだな……]] .. player('君','君たち') .. [[に１つ、仕事を頼みたいのだが、いいだろうか。
　]] .. mark(43) .. [[にいる、フィリスという女性を保護してきてもらいたい。
　本来は我々が行うべき仕事だが……手が回らなくてな。
　]] .. player('君','君たち') .. [[を信頼して、頼む！」]]

  writeline(text)
  eventflag('導きの月',2,false)
elseif checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',3) == true then
  text = [[ツェンブルグの警備隊の詰所だ。
やはり、慌ただしい。

だが、その慌ただしさは、最初に来た時よりも、さらに過熱化している。

警部プラート
「ンッ！？
　]] .. player('君','君たち') .. [[か、フィリス嬢を連れてきてくれたのだな。
　お初にお目にかかる。
　私は王国警察局所属のマイロット・プラート警部だ。
　今回は、陛下直々の命令により、バーサーカー事件の調査に来たのだが……来るのが遅すぎたようだな」

青白き娘フィリス
「遅すぎた……？」

警部プラート
「市民の一部や嘆かわしいことに、警備隊の一部にも、変化してしまったものがいる。
　そのおかげで、この有様だ」

プラートに、彼女を連れてくる時に起こった、パメラの件を伝える。

警部プラート
「なンだと！？
　……やはり、これは何者かによるテロ、か……」

と、慌てた様子で１人の青年警備隊員が駆け寄ってくる。

慌てている警備隊員
「プ、プラート警部！
　酒場の飲み物から、警部の指摘した物質が……あっ！」

こちらに気付いたのか、最後まで言う前に、口ごもる。

警部プラート
「かまわん。続けてくれ、ダン」

警備隊員ダン
「はっ、はい！
　やはり、警部の言った通りでした。
　何者かにより、樽の中よりドルサノフが検出されました。
　ダナクスの研究機関にも確認したところ、間違いない、とのことです」

警部プラート
「わかった」

警備隊員ダン
「それから……その……」

警部プラート
「どうした？」

警備隊員ダン
「カールが調査したところ、これを作れるのは、近隣に住むグザード卿しかいないのではないか、と……」

警部プラート
「わかった。
　引き続き、君たちはさらなる調査を行ってくれ。
　私は彼に会ってくる」

警備隊員ダン
「わかりました！」

警部プラート
「フィリス嬢、あなたはこちらでお待ちいただきたい。
　]] .. player('君','君たち') .. [[はどうするかね？
　ここでフィリス嬢と共にいてもらっても構わンし、私と共に来てもらってもいい。
　好きにするといい」

フィリスを護るならば、もう一度ここ。
だが、グザードを調べるならば、]] .. mark(69) .. [[へ向かう必要があるだろう。]]

  writeline(text)
  eventflag('導きの月',4,false)
elseif checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',4) == true then
  text = [[ツェンブルグの警備隊の詰所だ。
やはり、慌ただしい。

青白き娘フィリス
「…………」

不安そうに、フィリスはあたりを見回していた。

警備隊員ダン
「自分たちも、フィリスさんを護ります！」

そう言って、ダンと、彼の仲間であるのだろう、２人の青年警備隊員がやってくる。


警備隊員ダン
「こちらはカールとウェルナーです」

そうやって、自己紹介をしている時だった。

ひときわ大きな、悲鳴が聞こえた。

警備隊員カール
「なっ、なんだ！？」

キザな男
「おぉっと、やぁっと見つけましたよ……フィリスさん？」

青白き娘フィリス
「だ、誰……」

得体の知れぬ長い髭を携えた、虎のような獣……キメラを連れて、１人の男がやってきた。

警備隊員ウェルナー
「お前は……グザード卿！？」

警備隊員ダン
「警備隊の詰所を襲撃するなんて、何を考えているんだ！」

グザード卿
「おっと、ザコには興味がありません」

グザードの言葉と共に、キメラが髭……いや、触手を伸ばす。

警備隊員カール
「ダァーーン！！」

このままでは、フィリスが危ない！
彼女を護るために、彼女の前に立つ。

グザード卿
「おや、邪魔をするというのですか？
　いいでしょう……さあ、やってしまいなさい！！」

キメラが咆吼を上げ、襲いかかってきた！！]]

  writeline(text)
  battle('142','',0,0,0,0)
elseif checkquestoffer(50) == false and checkquestcomp(50) == false and checkquestcomp(49) == true and checkfames('ネルヴァリア',5) == true then
  text = [[ツェンブルグの警備隊の詰所だ。
忙しそうに警察官が行き交っている。

警備隊員フランク
「やや！？
　]] .. player('君','君達') .. [[は、最近名が出てきた]] .. partyname() .. [[かい！？」

髭を蓄えた警備隊員のようだ。
にこやかに話しかけてきた。

警備隊員フランク
「いやいや、これは都合がいい！
　おぉっと、わたしは、フランクと申す者だ。
　以後、よろしく頼む」

そう言って、深々とお辞儀をした。
癖なのだろうか、自分の髭をなでながら喋っている。

警備隊員フランク
「さっそくだが、仕事を頼みたいのだ。
　実は、この街へ盗賊団が襲撃を仕掛けてくるという情報を入手してね。
　警戒のため、そして、万が一の対策のために傭兵を募っているのだよ。
　もしよければ、]] .. player('君','君達') .. [[も防衛の前線となる]] .. mark(102) .. [[へ向かってくれないかね」

そして、彼は髭をなでつつ、去り際に言った。

警備隊員フランク
「……情報では、敵は動きの素早い狼を連れているそうだ。
　何かそいつの手を止める手段がないと、厳しいかもしれんな……」]]

  writeline(text)
  questoffer(50)
else
  text = [[ツェンブルグの警備隊の詰所だ。
忙しそうに警察官が行き交っている。]]

  writeline(text)
end
