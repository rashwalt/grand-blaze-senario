
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) in [10, 20]:
	ScUtil.Print("""
{{ msg 'ミリュ' '' }}
「そういえば、聞いたことあるな……」
{{ endmsg }}

何の話だ？というこちらの視線を感じたのか、ミリュが言葉を続ける。

{{ msg 'ミリュ' '' }}
「そうだなぁ……ここ数年の間に世界はいろいろあったけど……。
　この%s……以前は『国境の街ゼクリア』って呼ばれてたけど、もっと昔のことをいうと、ファーネルド連邦の領土だったんだよね。
　当時の首相の主導で公共事業の拡大を行ったんだよね。
　もっとも、すべてが完成する前に魔神戦争が始まったっていう話だけど……。
　だから、ここも当時、建設途中で廃棄された地下水路ってところかな」
{{ endmsg }}

地下水路を進むと、水の流れる音が徐々に大きくなってくる。
しばらく進むと少し広い空間に出た。
当たりを見回すが、特に敵の姿はないように思えた。

{{ msg 'ミリュ' '' }}
「……なんにもいないみたいだね」
{{ endmsg }}

そう言う、ミリュの背後にぼとっと落ちたスライムを見るまでは……！
""" % (ScName.ByArea(26))
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 20:
			ScGet.QuestStageSet(memberid, 4, 20)
	ScGet.BattleStart('23,24,25,26','3',4,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
