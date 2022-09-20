
if ScCheck.QuestOffer(100) and ScGet.QuestStage(100) == 0 and ScGet.BattleResult() == 0:
	
	ScUtil.Print("""
%s
賞金首「レッドクイーン」の討伐に成功した！
達成者に対し、報酬が配られます。

%s
%s
""" % (ScGet.QuestComplete(100,True), ScName.MsgMoney(100), ScName.MsgExp(20))
	)

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 100) and ScGet.QuestStagePrivate(memberid, 100) < 10:
			ScGet.QuestStageSet(memberid, 100, 10)
			ScGet.MoneyPrivate(memberid, 100)
			ScGet.ExpUp(memberid, 20)
			
			target_item_list = [17600, 17601, 18101, 18102, 18600, 18601]
			target_item_id = target_item_list[ScUtil.Random(1, len(target_item_list)) - 1]
			
			ScGet.ItemPrivate(memberid, target_item_id, 1)
			ScUtil.Print("""%sは%sを手に入れた！""" % (ScGet.ByCharaName(memberid), ScName.ByItem(target_item_id))
			)
