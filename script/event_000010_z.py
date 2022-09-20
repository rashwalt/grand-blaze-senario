
if ScCheck.QuestOffer(5) and ScGet.QuestStage(5) == 0 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 5) and ScGet.QuestStagePrivate(memberid, 5) < 10:
			ScGet.QuestStageSet(memberid, 5, 10)
			ScGet.MoneyPrivate(memberid, 420)
			ScGet.ExpUp(memberid, 400)
			ScGet.UsingKeyItemPrivate(memberid, 6)

	ScUtil.Print("""
モンスターを倒し、試験管に水を入れる。
目的を終え、冒険者ギルドへ戻る……。

冒険者ギルドへ戻ると、カニングがこちらを見つけ、大げさに手を広げて見せた。

{{ msg 'カニング' '' }}
「おお、遅かったではないか。
　待ちこがれて胸焼けが起きかけたぞ」
{{ endmsg }}

{{ msg 'ルース' '' }}
「胃薬飲んでくださいよ……」
{{ endmsg }}

{{ msg 'カニング' '' }}
「馬鹿者。
　物のたとえだ」
{{ endmsg }}

{{ msg 'ルース' '' }}
「ええ、そうでしょうね。
　さっきまでギルドの中をうろうろうろろうろうろ……。
　他の人があなたを『不思議な生き物を見る目』で見ていたの、気がつきませんでしたか？」
{{ endmsg }}

{{ msg 'カニング' '' }}
「まったく、嘆かわしい！
　科学者というモノは、世に認められるまで全く理解されないのだからな！！」
{{ endmsg }}

{{ msg 'ルース' '' }}
「あなたが妖しすぎるだけです」
{{ endmsg }}

{{ msg 'カニング' '' }}
「嘆かわしい！！
　ん、おお、そうだった。
　忘れるところだった。
　ほれ、とってきた水を渡したまえ！」
{{ endmsg }}

カニングに水路の水が入った試験管を渡す。
すると、カニングはすぐに、受け取った試験管の中へ、懐から取り出した妖しい薬品を一滴だけいれる。

{{ msg 'ルース' '' }}
「ちょ、こんなところで『化学実験』なんかやらないでくださいよ！」
{{ endmsg }}

{{ msg 'カニング' '' }}
「黙っておれ！」
{{ endmsg }}

試験管の中にあった透明な水が、徐々にその色を白へと変貌させていく。

{{ msg 'ルース' '' }}
「……？」
{{ endmsg }}

{{ msg 'カニング' '' }}
「やはり、やはりな……。
　このままではいずれ……いや、しかし……」
{{ endmsg }}

{{ msg 'ルース' '' }}
「いや、こんなところで実験しておいてなんで一人で納得してるんですか」
{{ endmsg }}

{{ msg 'カニング' '' }}
「ああ、いや……。
　すまんが、今は何もいえん。
　だが、だがしかし。
　新たな事実が判明次第、私は帰ってくるぞ、フハハハハハ！！」
{{ endmsg }}

そのまま、高笑いしながらカニングは出て行った。

{{ msg 'ルース' '' }}
「えぇっと……。
　うーん、まあ、報酬は受け取ってあるので……。
　こちらです。どうぞ」
{{ endmsg }}

%s
%s
%s
""" % (ScGet.QuestComplete(5,True), ScName.MsgMoney(420), ScName.MsgExp(400))
	)
