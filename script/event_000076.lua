ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

is_event = false

if checkquestoffer(29) == false and checkquestcomp(29) == false and checkquestcomp(16) == true then
  text = [[ぼりぼりぼりぼり。

冒険者ギルドの王国支部に入ると、まず最初に聞こえてきたのはその音だった。
音のする方を見ると、猫のような細長い尻尾をゆらゆらとさせながら、一人のライカンスの女性が、菓子……ビスケットだろう……を頬張っていた。

ギルドの中には、今は彼女しかいない。

ライカンスの女性
「んぐっ。
　あー？
　なに、]] .. player('あんた','あんたら') .. [[？
　あ、もしかして、何かの勧誘ってわけ？
　あーはいはい、帰って帰って。
　本部がケチだから、あたし、これを自費で買わなきゃいけなかったんだから」

そう言って、自分が食べているビスケットを指さす。
……それは当然では？
そう思ったが、口には出さずにしておく。

ひとしきり、ビスケットとジュースを飲み終えると、再び、こちらを見てきた。

ライカンスの女性
「……だから、勧誘はいらないんだけど？
　聞こえてますか～？」

？？？
「あっ、すいません、通していただけますか？」

振り返ると、丁度、入り口から両手に袋を抱えた若い男性が入ってきた。
どこか、子犬のような印象のある男性だった。

ライカンスの女性
「ちょっと、ビリー、遅いよ！
　いつまで待たせる気？
　もう食べ終わっちゃったんだけど？」

ビリーと呼ばれた男性
「って、もう食べ終わったの？
　いつもながら速いね……。
　って、ミラ、こちらの]] .. player('方','方々') .. [[は？」

ミラと呼ばれた女性
「知らない。
　勧誘じゃないの」

ビリーと呼ばれた男性
「し、知らないって……。
　あ、あの、失礼ですが、]] .. player('あなた方','あなた方々') .. [[は、いったい？」

ビリーと呼ばれた男性に、冒険者であると告げると、彼は両手に抱えていた袋を落とした。

ビリーと呼ばれた男性
「ぼ、冒険者の方！？
　ちょっと、ミラ！」

ミラと呼ばれた女性
「ビリー！
　あんたねぇ、あたしの菓子、落とすんじゃないよ！！」

ミラと呼ばれた女性の剣幕に、ビリーは狼狽した。

ミラと呼ばれた女性
「あたしの菓子と冒険者、どっちが大事なわけ！？」

ビリーと呼ばれた男性
「ンな無茶な比較！？
　それに、僕達の仕事は……」

ミラと呼ばれた女性
「いい訳は聞かない！
　だいたい、いつもあんたは……」

……１時間後。

ビリーと呼ばれた男性
「すいません、待たせちゃって」

結局。
ミラは散々まくし立てた後、ビリーの買ってきた菓子をまた頬張りはじめた。
横から「ぼりぼり」と聞こえてくるのは気のせいではない。

受付ビリー
「えぇっと、依頼の確認ですよね。
　えーっと、頼めそうなものは……これかな。
　セントフォーレの森って、知ってますか？
　あ、ファーネルからの冒険者の方なら知ってるかな、通ってきたところです。
　あそこの]] .. mark(52) .. [[と呼ばれる場所に、最近、モンスターというか、妖魔というか、ともかく、何かが住み着いてしまったようなんです。
　これを駆除して欲しい、というのが、今回の依頼です」

ぼりぼり。
ビリーが説明している間にも、音は響く。

受付ビリー
「報酬はすでにギルドが代行して受け取っていますので、依頼が完遂次第、現場をこれで、撮ってきてください」

そう言って、ビリーはカメラを手渡してきた。

受付ビリー
「十分だと思ったら、それで撮った写真を持ってきていただければ、成果に応じて報酬を支払います。
　ただ、あまり無理はしないでくださいね。
　かなり強力な魔物もいるようなので……。
　そういう相手には、それなりの腕を持った方に頼みますから。
　では、よろしくお願いします」

受付ミラ
「ビリー、紅茶いれてー」

受付ビリー
「えっ！？
　はいはい……
　あ、地図は忘れずに持っていってくださいね！
　それじゃ、よろしくお願いします！」

そう言って、ビリーはミラの紅茶を入れに向かった。

]] .. keyitemgetmsg(76)

  writeline(text)
  questoffer(29)
  eventflag('妖魔討伐',0,false)
  is_event = true
elseif checkquestoffer(29) == true and checkquestcomp(29) == false and checkeventflag('妖魔討伐',0) then
  -- なにもしない。
elseif checkquestoffer(29) == true and checkquestcomp(29) == false and checkeventflag('妖魔討伐',1) then
  text = [[ぼりぼり。

受付ミラ
「帰ったの？
　おかえり～」

食べつつ、ミラが出迎える。
冒険者ギルドの王国支部だ。

しかし、彼女はねぎらいの言葉をかけるわけでもなく、食べながらこちらの動向を見守っている。

いや、無言で催促しているのだ。

早く、カメラで撮った写真を出せと。

……写真を受付の台の上に置くと、ミラは無言で、報酬を置く。
依頼完了、ということだろうか。

何か釈然としないものを感じつつ、無事にミッションはクリアだ。

]] .. getmoneymsg(400)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],29) == false then
      getmoneys(partymember[entry], 400)
    end
  end

  writeline(text)
  questcomp(29)
  is_event = true
elseif checkquestoffer(29) == true and checkquestcomp(29) == false and checkeventflag('妖魔討伐',2) then
  text = [[ぼりぼりぼりぼり。

受付ミラ
「帰ったの？
　おかえり～」

食べつつ、ミラが出迎える。
冒険者ギルドの王国支部だ。

しかし、彼女はねぎらいの言葉をかけるわけでもなく、食べながらこちらの動向を見守っている。

いや、無言で催促しているのだ。

早く、カメラで撮った写真を出せと。

……写真を受付の台の上に置くと、ミラは無言で、報酬を置く。
依頼完了、ということだろうか。

何か釈然としないものを感じつつ、無事にミッションはクリアだ。

]] .. getmoneymsg(750)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],29) == false then
      getmoneys(partymember[entry], 750)
    end
  end

  writeline(text)
  questcomp(29)
  is_event = true
elseif checkquestoffer(29) == true and checkquestcomp(29) == false and checkeventflag('妖魔討伐',3) then
  text = [[ぼりぼりぼりぼりぼりぼり。

受付ミラ
「帰ったの？
　おかえり～」

食べつつ、ミラが出迎える。
冒険者ギルドの王国支部だ。

しかし、彼女はねぎらいの言葉をかけるわけでもなく、食べながらこちらの動向を見守っている。

いや、無言で催促しているのだ。

早く、カメラで撮った写真を出せと。

……写真を受付の台の上に置くと、ミラは無言で、報酬を置く。
と、彼女の手が、置かれた写真を見ると止まった。

受付ミラ
「へぇ……すごいね、]] .. player('あんた','あんたたち') .. [[。
　やるじゃん。
　こいつを倒すとはね」

そう言って、写真に写った]] .. monstername(105) .. [[を指さす。

受付ミラ
「がんばったご褒美も上乗せしたから。
　じゃ」

そう言って、またミラは食べ始めた。
依頼完了だ。

]] .. getmoneymsg(1200)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],29) == false then
      getmoneys(partymember[entry], 1200)
    end
  end

  writeline(text)
  questcomp(29)
  is_event = true
elseif checkquestoffer(29) == true and checkquestcomp(29) == false and checkeventflag('妖魔討伐',4) then
  text = [[ぼりぼりぼりぼりぼりぼりぼりぼり。

受付ミラ
「帰ったの？
　おかえり～」

食べつつ、ミラが出迎える。
冒険者ギルドの王国支部だ。

しかし、彼女はねぎらいの言葉をかけるわけでもなく、食べながらこちらの動向を見守っている。

いや、無言で催促しているのだ。

早く、カメラで撮った写真を出せと。

……写真を受付の台の上に置くと、ミラは無言で、報酬を置く。
と、彼女の手が、置かれた写真を見ると止まった。
ぽろりと、口にしていたビスケットが床に落ちる。

受付ミラ
「……]] .. player('あんた','あんたたち') .. [[、これをホントに倒したの？」

頷くと、ミラは感嘆の口笛を吹いた。

受付ミラ
「まさか、]] .. monstername(106) .. [[を倒すなんて、ね。
　でも、おかげであそこの森もいくらか安全になりそうね。
　じゃ、これ、報酬全額渡すよ。
　おめでとさん」

そう言って、またミラは食べ始めた。
依頼はすべて完了だ。

]] .. getmoneymsg(2000)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],29) == false then
      getmoneys(partymember[entry], 2000)
    end
  end

  writeline(text)
  questcomp(29)
  tarent(17)
  is_event = true
elseif checkquestcomp(29) == true and checkquestoffer(43) == false and checkquestcomp(43) == false then
  text = [[ぼりぼり。

王国支部に、いつも通りの、音が響いていた。
音のする方を見ると、猫のような細長い尻尾をゆらゆらとさせたミラが、菓子を頬張っていた。

ギルドの中には、彼女しかいないようだった。

受付ミラ
「あー？
　んぐっ。
　なに、もしかして……仕事さがしてんの？」

半眼でこちらを見てくる。
何か、気に入らなかったのだろうか。

受付ビリー
「あっ、探しましたよ、]] .. player('nameさん','みなさん') .. [[！」

丁度、ギルドへビリーが入ってきた。

受付ビリー
「って、ミラ！
　僕が出かける前に言っておいたじゃないか。
　探してるって……」

受付ミラ
「だって興味ないし。
　だいたい、あんた買ってきたわけ？
　あたしのお菓子」

受付ビリー
「か、買ってきたけど……」

ビリーの言葉に、黙ってミラは手を突き出す。
その手にそっと買ってきた菓子の入った袋を手渡すと、ミラは奥へと引っ込んでしまった。
……食べる音が聞こえることから、どうやら食べているらしい。

受付ビリー
「はぁ。なんだか、すいません……。
　あっ、それで、ですね。
　]] .. player('nameさん','みなさん') .. [[に、城……]] .. mark(90) .. [[に来てほしいとのことです。
　なんでも、大事な話があるとかで……」]]

  writeline(text)
  questoffer(43)
  is_event = true
elseif checkquestcomp(43) == true and checkquestoffer(52) == false and checkquestcomp(52) == false then
  text = [[ひょこひょこと、左右に尻尾が揺れている。

ギルドに入り、少し高いカウンターから見えるのは、それだけだった。

無意識にその尻尾を眺めていると、唐突に、尻尾の動きが止まった。
くいっくいっと、まるで手招きしているように尻尾が動く。

おそるおそるカウンターに近付くと、床に這いつくばった形のミラがいた。

受付ミラ
「……菓子……」

それだけ言うと、がっくりと項垂れてしまった。

……ただ、お腹が空いていただけのようだ。

受付ビリー
「あれ、]] .. player('nameさん','みなさん') .. [[。
　仕事を探しに、ですか？
　ん……？」

外に出ていたのだろう、菓子が入った袋を持ったビリーがギルドの中へ入ってきた。
こちらがカウンターの奥を見ているのを訝しげにしつつ、こちらの視線の先……倒れているミラを見つける。

受付ビリー
「ミラ！
　ど、どうしたんだよ、一体！？」

慌ててビリーが駆け寄る。
すると、ぴくんと耳を反応させ、ミラががしっとビリーが持っていたお菓子の袋をつかんだ。

受付ミラ
「菓子……！」

お菓子が詰め込まれた袋を奪い、彼女はギルドの奥──当直室だろうか？──に引っ込んでしまった。

受付ビリー
「あぁ……えぇっと……。
　そ、そうだ。仕事、探しているんですよね。
　なにか、あったかな……」

がさごそとカウンターに置かれたファイルをめくる。
何かこちらの実力に見合った仕事がないか探しているようだ。

？？？？
「失礼するわ」

白衣を着た黒い長髪の女性が入ってきた。
黒縁の眼鏡を掛けている。

受付ビリー
「あ、ご用件は…？」

白衣の女性
「ここ、冒険者ギルドでしょう？
　……ファーネルドのギルドで、ここで待つようにと言われたんだけど？」

受付ビリー
「へ……？」

何かあったかと、資料をあさる。

白衣の女性
「やれやれ」

資料を探し慌てるビリーを横目に、彼女はギルド内に設置されている椅子に腰掛ける。

受付ビリー
「あ、あった……。
　シェリルさん、ですよね。錬金術師の」

学者シェリル
「学者、でいいわよ。
　それに……]] .. playerex('彼','彼女','彼ら','彼女たち') .. [[のような錬金術を合成で作っているわけでもないから。
　……で、誰か頼りになる人はいるのかしら？」

ちらっとこちらを見た。

受付ビリー
「そう、ですね……]] .. area(105) .. [[を越えるんですよね……。
　う～ん……」

学者シェリル
「ねぇ、こちらが指定してもいいのかしら？」

受付ビリー
「え？
　構いませんけど……」

学者シェリル
「それじゃ……。
　]] .. player('あなた','あなたたち') .. [[、私の護衛をする気無い？
　腕も立つようだし、何より……仕事を探しに来たのでしょう？」

困惑していると、シェリルは頷いて見せた。

学者シェリル
「ごめんなさいね。
　いきなり言われても困るかしら。
　……護衛を頼みたいのよ。
　私と共に、]] .. area(105) .. [[を越え、白い街へ行きましょう？
　まあ、受けてくれるかどうかは任せるわ。
　やってくれるなら、]] .. area(105) .. [[の]] .. mark(105) .. [[へ行きましょう」

行って、彼女はギルドを出て行った。
この仕事を受けるならば、]] .. area(105) .. [[の]] .. mark(105) .. [[へ向かえばいい。]]

  writeline(text)
  questoffer(52)
  is_event = true
end

if is_event == false then
  text = [[冒険者ギルド 王国支部にはいると、受付のライカンスの女性、ミラがぼりぼりぼりぼりと菓子を食べていた。

受付ミラ
「うーん？
　（ぼりぼり）なんかひょう？
　あたし、今、いそがふぃいから、あとにして」

そう言って、彼女は菓子を食べていた。
やる気は、ないだろう。]]

  writeline(text)
end

