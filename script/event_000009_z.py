
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) == 60 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 70:
			ScGet.QuestStageSet(memberid, 4, 70)
			ScGet.MoneyPrivate(memberid, 1700)
			ScGet.ExpUp(memberid, 600)

	ScUtil.Print("""
炎の狼を倒すと、炎の塊だったそれは沈むように地面に消えていった。

{{ msg 'ミリュ' '' }}
「これでやっと、外に出られるね」
{{ endmsg }}

ミリュの言うとおり、先に進むと外の明かりが差し込む出口が見えてきた。
久々に浴びる太陽の光はまぶしく、慣れるのに時間が必要だった。
だが、それもほんの少し。

{{ msg 'ミリュ' '' }}
「さて……%sはこれからどうするの？」
{{ endmsg }}

依頼を受けて起こったことを冒険者ギルドに報告した方がよいだろう。
そう告げると、ミリュは「確かにね」と答えた。

{{ msg 'ミリュ' '' }}
「ボクは別のところで受けた依頼があるから、そっちに報告に行くよ。
　……ああ、そうそう。
　あの謎の階級章も調べていつか%sに報告が届くようにするよ。
　今日だけの出会いじゃない予感がするし、ね」
{{ endmsg }}

そう言って、ミリュは手を振り、旅立っていった。

%s
%s
%s
""" % (ScGet.GetPlayerName('きみ','きみたち'), ScGet.GetPlayerName('きみ','きみたち'), ScGet.QuestComplete(4,True), ScName.MsgMoney(1700), ScName.MsgExp(600))
	)

