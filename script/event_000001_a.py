
if ScCheck.QuestOffer(1) and ScGet.QuestStage(1) < 10:
	partycount = len(ScGet.PartyMember())
	popmonster = []
	i = 1
	for i in range(partycount):
		popmonster.append('1')
		i += 1
	
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 1) and ScGet.QuestStagePrivate(memberid, 1) < 10:
			ScGet.QuestStageSet(memberid, 1, 10)
	
	ScUtil.Print("""
%sから%sへ出ると、そこは丈の短い草花が咲く場所に出る。
「%s」と呼ばれる、冒険初心者にとっては訓練場と呼ばれる場所だ。
周囲には、%sの他にも、“動く”小さな苗と戦っている冒険者がいる。

丁度、こちらに気がついた“動く”小さな苗──%sが迫ってきた！
""" % (ScName.ByArea(1), ScName.ByArea(3), ScName.ByMark(1), ScGet.GetPlayerName('自分','自分たち'), ScName.ByMonster(1))
	)
	
	ScGet.BattleStart(','.join(popmonster),'',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)