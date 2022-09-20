
if ScCheck.QuestOffer(3) and ScGet.QuestStage(3) == 0 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 3) and ScGet.QuestStagePrivate(memberid, 3) < 10:
			ScGet.QuestStageSet(memberid, 3, 10)
			ScGet.ExpUp(memberid, 150)

	ScUtil.Print("""
襲いかかってきたトマトたちを撃退した。
戦利品のトマトは……そのまま売ってしまえば、おそらく市場に流れ、あの人たちの元へ行くことになるだろう。

全身を返り汁で真っ赤に染めながら、帰路につく……。

%s

%s
""" % (ScGet.QuestComplete(3,True), ScName.MsgExp(150)))

