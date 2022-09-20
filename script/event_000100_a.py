
if ScCheck.SP(2) and ScCheck.BC(1):
	
	ScUtil.Print("""
%s

ブレイズチップが砕け、幻想的な世界が広がりはじめる…。

とある緑一色の平原に、ぽつんと朱が混じる。
鮮やかな赤。
まさに、【紅一点】！

そこに立ちふさがるは、平原に生まれた赤い奴。

さあ、武器を手に取り、賞金首「レッドクイーン」を討伐せよ！
""" % (ScGet.QuestOffer(100,True)))
	
	for memberid in ScGet.PartyMember():
		ScGet.QuestStageSet(memberid, 100, 0)
		ScGet.UsingBCPrivate(memberid, 1)
	
	ScGet.BattleStart('59','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)