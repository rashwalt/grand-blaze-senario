
if ScCheck.QuestOffer(9) and ScGet.QuestStage(9) == 0 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 9) and ScGet.QuestStagePrivate(memberid, 9) < 10:
			ScGet.QuestStageSet(memberid, 9, 10)
			ScGet.ExpUp(memberid, 380)
			ScGet.ItemPrivate(memberid, 20511, 1)
			
	ScUtil.Print("""
「こけら」を倒し、灰色の水晶を筒に入れる。
筒に対象物を入れるとまた再び、周囲に気配が生じる。
いつまでもこの場所にいるわけにはいかない。
すぐにジルのいた場所へと戻る。

{{ msg 'ジル' '' }}
「無事に戻ったか。
　例のモノは？」
{{ endmsg }}

筒に入った水晶を見せる。

{{ msg 'ジル' '' }}
「よくやったな。
　誰か！　これをドクターのもとへ！」
{{ endmsg }}

兵士に筒を渡し、自身は椅子に座る。

{{ msg 'ジル' '' }}
「任務達成、助かった。
　これは報酬だ。大事に扱ってくれ」
{{ endmsg }}

%s
%s
%sを手に入れた！
""" % (ScGet.QuestComplete(9,True), ScName.MsgExp(380), ScName.ByItem(20511)))

