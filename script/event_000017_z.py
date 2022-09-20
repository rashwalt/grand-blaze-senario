
if ScCheck.QuestOffer(8) and ScGet.QuestStage(8) == 0 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
モンスターを倒し、一息つくとエリアルドが呟いた。

{{ msg 'エリアルド' '' }}
「……かつて来たときとは、出てくる魔物が違う……。
　普段は見ないアンデッドの姿がありますね。
　ふむ……注意して進みましょうか」
{{ endmsg }}

先行して、周囲を警戒しながら歩く。
彼について行くことで、森の賢者のいる場所へとたどり着くに違いない。
%s
%s
""" % (ScGet.Mark(18,True), ScName.MsgExp(200))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 8) and ScGet.QuestStagePrivate(memberid, 8) < 10:
			ScGet.QuestStageSet(memberid, 8, 10)
			ScGet.ExpUp(memberid, 200)
		
