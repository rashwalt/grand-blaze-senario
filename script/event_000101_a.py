
if ScCheck.SP(4) and ScCheck.BC(3):
	
	ScUtil.Print("""
%s

ブレイズチップが砕け、カビの生えた陰鬱な風景が広がる…。

その中心ににやりと笑う奇妙な格好をした男がいた。

奇術師フール。

世界的に指名手配された凶悪な犯罪者だ！

さあ、武器を手に取り、賞金首「奇術師フール」を討伐せよ！
""" % (ScGet.QuestOffer(101,True)))
	
	for memberid in ScGet.PartyMember():
		ScGet.QuestStageSet(memberid, 101, 0)
		ScGet.UsingBCPrivate(memberid, 3)
	
	ScGet.BattleStart('60','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)