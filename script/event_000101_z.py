
if ScCheck.QuestOffer(101) and ScGet.QuestStage(101) == 0 and ScGet.BattleResult() == 0:
	
	ScUtil.Print("""
%s
賞金首「奇術師フール」の討伐に成功した！
達成者に対し、報酬が配られます。

%s
%s
""" % (ScGet.QuestComplete(101,True), ScName.MsgMoney(300), ScName.MsgExp(25))
	)

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 101) and ScGet.QuestStagePrivate(memberid, 101) < 10:
			ScGet.QuestStageSet(memberid, 101, 10)
			ScGet.MoneyPrivate(memberid, 300)
			ScGet.ExpUp(memberid, 25)
			
			target_item_list = [20513, 20514, 20515, 20516, 20517, 20518]
			target_item_id = target_item_list[ScUtil.Random(1, len(target_item_list)) - 1]
			
			ScGet.ItemPrivate(memberid, target_item_id, 1)
			ScUtil.Print("""%sは%sを手に入れた！""" % (ScGet.ByCharaName(memberid), ScName.ByItem(target_item_id))
			)
