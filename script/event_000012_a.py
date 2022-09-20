
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) in [10, 20]:
	
	is_fieldskill = False
	if ScCheck.Field(1, 10):
		# アクセサリーゲット
		check_result = """……無事に鍵を開けることができた。
%s""" % (ScName.MsgItem(20500, 1))
		is_fieldskill = True
	else:
		check_result = "……ダメだ！鍵を開けることができない……。諦めるしかない……。"
	
	ScUtil.Print("""
遺跡の中で、誰も入ったことのない区画。
つまりそれは、お宝がどこかにあるということだった。

ホランドに頼まれたとおり、遺跡の内部を調査していく。
……しばらくすると、隠すかのように鍵のかかった箱が置かれているのを見つけた。
宝箱だ。

罠を調べ、鍵がかかっていないか確認する……。
……罠はかかっていないようだ。
%s

宝箱のあった場所を通り過ぎ、遺跡内部を調査する。
何かないかと調べていると、突如何かの気配を感じた……！
""" % (check_result)
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 20:
			ScGet.QuestStageSet(memberid, 6, 20)
			if is_fieldskill:
				ScGet.ItemPrivate(memberid, 20500, 1)
	ScGet.BattleStart('','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
