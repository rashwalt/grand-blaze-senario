
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) == 20 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
{{ msg 'ミリュ' '' }}
「うわぁ……これだから、べとべとは嫌なんだよ……」
{{ endmsg }}

スライムの返り血？を犬や猫のような仕草で振り払うと、次はバッグの中に入った布で武器を拭いていく。

{{ msg 'ミリュ' '' }}
「回復したら次に行こうか。
　また今回みたいに不意打ちを食らって戦うのはいやだしね」
{{ endmsg }}

まだ通路は続いているようだ…。
この先を進めば、本当に出られるのだろうか……？

%s
スライム討伐ボーナス！ %s
""" % (ScGet.Mark(8,True), ScName.MsgExp(180))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 30:
			ScGet.QuestStageSet(memberid, 4, 30)
			ScGet.ExpUp(memberid, 180)
		
