if checkquestoffer(48) == false and checkquestcomp(48) == false and checkfames('ネルヴァリア',5) == true then
  text = [[うろつく兵士
「うぅ、困った。困ったぞ……」

王国軍の兵士だろう、１人の青年がうろうろしていた。
……あまり、この場に似つかわしくない。

うろつく兵士
「うぅ、どうしよう……。
　あっ」

こちらに気付いたようだ。

うろつく兵士
「う、あ、冒険者さんですか！？」

助けが来た！といわんばかりの表情でこちらを見ている。

うろつく兵士
「あの、お願いがあるんです。
　実は、は、恥ずかしながら……地図をなくしちゃいまして。
　いや、無くしたというか、ぼろぼろに破けたというか。
　それで、この切れ端が街のどこかに落ちてると思うんですけど、探してもらえませんか」

そう言って、彼は破けた地図の一片を見せた。
見事に、破けている。

うろつく兵士
「あ、私、キーマと言います。
　あの、お願いします！」

そう言って、キーマと名乗った兵士はどこかへ掛けだしていった。

とはいえ、手がかりが全くない。]]

  if checktec('交渉','情報収集',5) then
    text = text .. [[

周辺で聞き込みを行うと、次の情報を得られた。
]] .. markname(55) .. [[と]] .. markname(99) .. [[で目撃情報があるようだ。]]

    eventflag('キーマの地図情報',1,true)
  else
    text = text .. [[

]] .. markname(66) .. [[で情報を知っている人物がいないか、探してみよう。]]
  end

  writeline(text)
  questoffer(48)
elseif checkquestoffer(48) == true and checkquestcomp(48) == false and checkkeyitem(274) == true and checkkeyitem(275) == true then
  text = [[こちらがやってくると、キーマは顔を再び輝かせた。

兵士キーマ
「待ってましたよ！
　地図、みつけてくれたんですよね！？」

見つけたぼろぼろになった地図を渡した。

兵士キーマ
「すごい！
　さすが冒険者だ！」

きらきらとした目で、こちらを見ている。
……まるで、冒険者に憧れる少年のようだ。

そこへ、１人の女性がやってきた。
どことなく、「奥様」の空気がする。

どこかの奥様
「こら、キーマ！
　またあんたは軍人さんの格好をして！」

兵士キーマ
「か、かあちゃん！？
　な、なんでここがわかったんだよ！」

キーマの母親
「なにいってるんだい。
　こんな場違いなところに、そんな格好をした軍人さんがいるものかい。
　だいたいね、母ちゃんはあんたのことならな～んでもお見通しなんだよ！
　すいませんね、冒険者さん。地図を探してくれたんだって？
　せめてものお詫びに、こいつを使ってください」

]] .. itemgetmsg(1217,1) .. [[

兵士？キーマ
「そ、それって……」

キーマの母親
「こんなことをした罰だよ！
　あんたはその地図を使いなさい！
　さあ、帰るよ！」

キーマは母に手を引かれて立ち去っていった。
何はともあれ、依頼は完了だ。]]

  writeline(text)
  questcomp(48)
  usekeyitem(274)
  usekeyitem(275)
  tarent(34)
end
