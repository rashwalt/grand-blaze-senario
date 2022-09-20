
if ScCheck.QuestOffer(10) and ScGet.QuestStage(10) == 0 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 10) and ScGet.QuestStagePrivate(memberid, 10) < 10:
			ScGet.QuestStageSet(memberid, 10, 10)
			ScGet.ExpUp(memberid, 350)
			
	ScUtil.Print("""
{{ msg '？？？' '' }}
「そこまで！」
{{ endmsg }}

戦いが一段落すると、それを待っていたかのように声が響いた。

{{ msg 'ジム' '' }}
「いい筋だな」
{{ endmsg }}

戦いを止めたのは、グランドギルドマスターのジムだった。

{{ msg 'クリク' '' }}
「マスター・ジム…」
{{ endmsg }}

{{ msg 'ジム' '' }}
「どうだ、クリク。
　実際に手を合わせたお前から見た、%sの腕は」
{{ endmsg }}

{{ msg 'クリク' '' }}
「まあ、合格、ですね。
　この腕ならば、秘術を授けても問題ないかと」
{{ endmsg }}

{{ msg 'ジム' '' }}
「だ、そうだ。
　よかったな！　これで、こいつは%sのもんだ」
{{ endmsg }}

言って、ジムは懐から小さな金属を人数分取り出し、それぞれに渡した。

{{ msg 'クリク' '' }}
「今マスターから渡されたそれが、サブクラスの力を引き出すための追加パーツだ。
　ギルドのライセンスを通じて、新たにクラスの力を追加できるようになる。
　よく考えて、自分の力を使いこなしてくれ」
{{ endmsg }}

%s
%s
%s
""" % (ScGet.GetPlayerName('こいつ','こいつら'), ScGet.GetPlayerName('お前','お前ら'), ScGet.QuestComplete(10,True), ScName.MsgExp(350), ScGet.KeyItem(3, True)))

